<?php
if (!function_exists('category_sidebar_menu')) {


    /**
     * @param $category
     * @param int $parent
     * @param string $seperator
     * @param null $cid
     * @return string|null
     */
    function route_list_sidebar($category, $parent, $seperator = ' ')
    {

        $html = null;
        if ($parent === null) {
            $current_lvl_keys = array_keys(array_column($category, 'parent_menu_id'), $parent, true);
        } else {
            $current_lvl_keys = array_keys(array_column($category, 'parent_menu_id'), $parent);
        }
        if (!empty($current_lvl_keys)) {
            $html = '<ul style="list-style: initial; margin: 0 0 0 20px;">';
            foreach ($current_lvl_keys as $key) {
                $html .= "<li>";
                $html .= "<a href='" . route('routelists.edit', $category[$key]['id']) . "'>" . $category[$key]['route_name'] . "</a>";
                $datas = explode(',', $category[$key]['to_role']);
                $html .= ' for ';
                foreach ($datas as $d) {
                    if($d > 1 && count($datas) > 1) {
                        $html .= ', ';
                    }
                    $html .= \App\Models\Role::where('id', $d)->first()->name;
                }

                $html .= route_list_sidebar($category, $category[$key]['id'], $seperator . '--');
                $html .= "</li>";
            }
            $html .= '</ul>';
        }
        return $html;
    }
}
