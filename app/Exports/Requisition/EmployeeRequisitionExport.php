<?php

namespace App\Exports\Requisition;

use App\Models\EmployeeRequisition;
use Carbon\Carbon;
use Maatwebsite\Excel\Concerns\FromCollection;
use Maatwebsite\Excel\Concerns\WithHeadings;

class EmployeeRequisitionExport implements FromCollection, WithHeadings
{
    private $date;

    /**
     * EmployeeRequisitionExport constructor.
     * @param $date
     */
    public function __construct($date)
    {
        $this->date = $date;
    }

    /**
     * @return \Illuminate\Support\Collection
     */
    public function collection()
    {
        return EmployeeRequisition::selectRaw(
            'id,
            requested_by,
            (SELECT name FROM users WHERE id = requested_by LIMIT 0,1) AS employee_name,
            (SELECT mbanking_information FROM users WHERE id = requested_by LIMIT 0,1) AS mbanking_info,
            accountant_edited_total_amount,
            (SELECT sum(accountant_edited_amount) FROM employee_requisition_breakdowns WHERE breakdown_random_code = requsition_random_code) AS breakdown_total,
            ((SELECT sum(accountant_edited_amount) FROM employee_requisition_breakdowns WHERE breakdown_random_code = requsition_random_code) + accountant_edited_total_amount) AS accountant_approved_total_amount,
            (SELECT name FROM projects WHERE id = project_id LIMIT 0,1) AS project_name,
            site_name,
            project_manager,
            project_manager_id,
            requested_date,
            accountant_approved_time'
        )->where('accountant_approved', 1)
            ->whereDate('accountant_approved_time', $this->date)
            ->get();
    }

    public function headings(): array
    {
        return [
            'Req ID',
            'Req By',
            'Employee Name',
            'Mob Banking',
            'Acc Approved Amount',
            'Acc Approved Breakdown Amount',
            'Acc Approved Total Amount',
            'Prj Name',
            'Site Name',
            'Prj Manager',
            'Manager ID',
            'Req Date',
            'App Time'
        ];
    }
}
