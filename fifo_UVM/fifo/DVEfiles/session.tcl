# Begin_DVE_Session_Save_Info
# DVE full session
# Saved on Sat Oct 12 04:22:53 2019
# Designs open: 0
# Toplevel windows open: 1
# 	CovTopLevel.1
#   Group count = 0
# End_DVE_Session_Save_Info

# DVE version: L-2016.06_Full64
# DVE build date: May 24 2016 21:01:02


#<Session mode="Full" path="/home/fguo/Desktop/fifo/DVEfiles/session.tcl" type="Coverage">

gui_set_loading_session_type Post
gui_continuetime_set

# Close all windows
gui_close_window -type Console
gui_close_window -type Wave
gui_close_window -type Source
gui_close_window -type Schematic
gui_close_window -type Data
gui_close_window -type DriverLoad
gui_close_window -type List
gui_close_window -type Memory
gui_close_window -type HSPane
gui_close_window -type DLPane
gui_close_window -type Assertion
gui_close_window -type CovHier
gui_close_window -type CoverageTable
gui_close_window -type CoverageMap
gui_close_window -type CovDetail
gui_close_window -type Local
gui_close_window -type Stack
gui_close_window -type Watch
gui_close_window -type Group
gui_close_window -type Transaction



# Application preferences
gui_set_pref_value -key app_default_font -value {Helvetica,10,-1,5,50,0,0,0,0,0}
gui_src_preferences -tabstop 8 -maxbits 24 -windownumber 1
#<WindowLayout>

# DVE top-level session


# Create and position top-level window: CovTopLevel.1

if {![gui_exist_window -window CovTopLevel.1]} {
    set CovTopLevel.1 [ gui_create_window -type CovTopLevel \
       -icon $::env(DVE)/auxx/gui/images/toolbars/dvewin.xpm] 
} else { 
    set CovTopLevel.1 CovTopLevel.1
}
gui_show_window -window ${CovTopLevel.1} -show_state maximized -rect {{0 24} {1919 1079}}

# ToolBar settings
gui_set_toolbar_attributes -toolbar {&File} -dock_state top
gui_set_toolbar_attributes -toolbar {&File} -offset 0
gui_show_toolbar -toolbar {&File}
gui_set_toolbar_attributes -toolbar {&Edit} -dock_state top
gui_set_toolbar_attributes -toolbar {&Edit} -offset 0
gui_show_toolbar -toolbar {&Edit}
gui_set_toolbar_attributes -toolbar {Exclusion} -dock_state top
gui_set_toolbar_attributes -toolbar {Exclusion} -offset 0
gui_show_toolbar -toolbar {Exclusion}
gui_set_toolbar_attributes -toolbar {Treemap} -dock_state top
gui_set_toolbar_attributes -toolbar {Treemap} -offset 0
gui_show_toolbar -toolbar {Treemap}
gui_set_toolbar_attributes -toolbar {Navigation} -dock_state top
gui_set_toolbar_attributes -toolbar {Navigation} -offset 0
gui_show_toolbar -toolbar {Navigation}
gui_set_toolbar_attributes -toolbar {PathNavigation} -dock_state top
gui_set_toolbar_attributes -toolbar {PathNavigation} -offset 0
gui_show_toolbar -toolbar {PathNavigation}
gui_set_toolbar_attributes -toolbar {Review} -dock_state top
gui_set_toolbar_attributes -toolbar {Review} -offset 0
gui_show_toolbar -toolbar {Review}
gui_set_toolbar_attributes -toolbar {ReviewScope} -dock_state top
gui_set_toolbar_attributes -toolbar {ReviewScope} -offset 0
gui_show_toolbar -toolbar {ReviewScope}
gui_set_toolbar_attributes -toolbar {&Window} -dock_state top
gui_set_toolbar_attributes -toolbar {&Window} -offset 0
gui_show_toolbar -toolbar {&Window}
gui_set_toolbar_attributes -toolbar {Zoom} -dock_state top
gui_set_toolbar_attributes -toolbar {Zoom} -offset 0
gui_show_toolbar -toolbar {Zoom}
gui_set_toolbar_attributes -toolbar {Zoom And Pan History} -dock_state top
gui_set_toolbar_attributes -toolbar {Zoom And Pan History} -offset 0
gui_show_toolbar -toolbar {Zoom And Pan History}

# End ToolBar settings

# Docked window settings
set CovHier.1 [gui_create_window -type CovHier -parent ${CovTopLevel.1} -dock_state left -dock_on_new_line true -dock_extent 200]
gui_set_window_pref_key -window ${CovHier.1} -key dock_width -value_type integer -value 200
gui_set_window_pref_key -window ${CovHier.1} -key dock_height -value_type integer -value 260
gui_set_window_pref_key -window ${CovHier.1} -key dock_offset -value_type integer -value 0
gui_update_layout -id ${CovHier.1} {{left 0} {top 0} {width 199} {height 792} {dock_state left} {dock_on_new_line true} {child_covhier_colhier 140} {child_covhier_coltype 100} {child_covhier_col1 1} {child_covhier_col2 2}}
set Console.1 [gui_create_window -type Console -parent ${CovTopLevel.1} -dock_state bottom -dock_on_new_line true -dock_extent 180]
gui_set_window_pref_key -window ${Console.1} -key dock_width -value_type integer -value 689
gui_set_window_pref_key -window ${Console.1} -key dock_height -value_type integer -value 180
gui_set_window_pref_key -window ${Console.1} -key dock_offset -value_type integer -value 0
gui_update_layout -id ${Console.1} {{left 0} {top 0} {width 1919} {height 179} {dock_state bottom} {dock_on_new_line true}}
#### Start - Readjusting docked view's offset / size
set dockAreaList { top left right bottom }
foreach dockArea $dockAreaList {
  set viewList [gui_ekki_get_window_ids -active_parent -dock_area $dockArea]
  foreach view $viewList {
      if {[lsearch -exact [gui_get_window_pref_keys -window $view] dock_width] != -1} {
        set dockWidth [gui_get_window_pref_value -window $view -key dock_width]
        set dockHeight [gui_get_window_pref_value -window $view -key dock_height]
        set offset [gui_get_window_pref_value -window $view -key dock_offset]
        if { [string equal "top" $dockArea] || [string equal "bottom" $dockArea]} {
          gui_set_window_attributes -window $view -dock_offset $offset -width $dockWidth
        } else {
          gui_set_window_attributes -window $view -dock_offset $offset -height $dockHeight
        }
      }
  }
}
#### End - Readjusting docked view's offset / size

# MDI window settings
set CoverageTable.1 [gui_create_window -type {CoverageTable}  -parent ${CovTopLevel.1}]
gui_show_window -window ${CoverageTable.1} -show_state maximized
gui_update_layout -id ${CoverageTable.1} {{show_state maximized} {dock_state undocked} {dock_on_new_line false}}
set CovDetail.1 [gui_create_window -type {CovDetail}  -parent ${CovTopLevel.1}]
gui_show_window -window ${CovDetail.1} -show_state maximized
gui_update_layout -id ${CovDetail.1} {{show_state maximized} {dock_state undocked} {dock_on_new_line false} {Layout_CovDetail_lnListView_names Category,Coverage,} {Layout_CovDetail_lnListView_widths 110,125,} {Layout_CovDetail_lnListView_orders 0,1,} {Layout_CovDetail_tglListView_names Variable, ,  ,   ,Type,Coverage,Display,} {Layout_CovDetail_tglListView_widths 140,25,0,0,50,125,745,} {Layout_CovDetail_tglListView_orders 3,0,1,2,4,5,6,} {Layout_CovDetail_tglDetailListView_names Variable, ,  ,   ,0->1,1->0,} {Layout_CovDetail_tglDetailListView_widths 140,25,0,0,50,50,} {Layout_CovDetail_tglDetailListView_orders 3,0,1,2,4,5,} {Layout_CovDetail_fsmListView_names FSM, ,  ,   ,State,Transition,Sequence,} {Layout_CovDetail_fsmListView_widths 64,25,0,0,125,125,125,} {Layout_CovDetail_fsmListView_orders 3,0,1,2,5,4,6,} {Layout_CovDetail_fsmlist_names Coverage, ,  ,   ,Transition,} {Layout_CovDetail_fsmlist_widths 125,25,0,0,74,} {Layout_CovDetail_fsmlist_orders 3,0,1,2,4,} {Layout_CovDetail_cndListView_names Expression, ,  ,   ,ID,Coverage,Line No.,} {Layout_CovDetail_cndListView_widths 320,25,0,0,0,125,64,} {Layout_CovDetail_cndListView_orders 3,0,1,2,4,5,6,} {Layout_CovDetail_brListView_names Name, ,  ,   ,Coverage,Line No.,} {Layout_CovDetail_brListView_widths 100,25,0,0,125,64,} {Layout_CovDetail_brListView_orders 3,0,1,2,4,5,} {Layout_CovDetail_designAssertListView_names Assert Name,    , ,  ,   ,Attempts,Real Successes,Failures,Incompletes,Category,Severity,} {Layout_CovDetail_designAssertListView_widths 109,0,25,0,0,65,98,61,83,66,60,} {Layout_CovDetail_designAssertListView_orders 4,0,1,2,3,5,6,7,8,9,10,} {Layout_CovDetail_codeMiddleSplitter_value1 10} {Layout_CovDetail_codeMiddleSplitter_value2 297} {Layout_CovDetail_cndSplitter_value1 180} {Layout_CovDetail_cndSplitter_value2 110} {Layout_CovDetail_covGrpInsListView_names Cover Group Item,    , ,  ,   ,Definition,Score,Goal,Weight,At Least,Per Instance,Overlap,Auto Bin Max,Print Missing,Comment,} {Layout_CovDetail_covGrpInsListView_widths 139,0,25,0,0,72,125,31,44,49,72,0,82,78,58,} {Layout_CovDetail_covGrpInsListView_orders 4,0,1,2,3,5,6,7,8,9,10,11,12,13,14,} {Layout_CovDetail_covGrpDefListView_names Cover Group Item,    , ,  ,   ,Score,Goal,Weight,At Least,Per Instance,Overlap,Auto Bin Max,Print Missing,Comment,} {Layout_CovDetail_covGrpDefListView_widths 139,0,25,0,0,125,67,80,85,108,0,118,114,94,} {Layout_CovDetail_covGrpDefListView_orders 4,0,1,2,3,5,6,7,8,9,10,11,12,13,} {Layout_CovDetail_m_CovGrpTable_names Bin Name,    , ,  ,   ,Status,Cross,At Least,Size,Hit Count,} {Layout_CovDetail_m_CovGrpTable_widths 95,0,25,0,0,150,0,61,39,71,} {Layout_CovDetail_m_CovGrpTable_orders 5,0,1,2,3,4,6,7,8,9,} {Layout_CovDetail_assertion list_names Instance,    , ,  ,   ,Assert Name,Attempts,Real Successes,Failures,Incompletes,Category,Severity,} {Layout_CovDetail_assertion list_widths 85,0,25,0,0,114,89,122,110,107,90,84,} {Layout_CovDetail_assertion list_orders 4,0,1,2,3,5,6,7,8,9,10,11,} {Layout_CovDetail_funMiddleSplitter_value1 635} {Layout_CovDetail_funMiddleSplitter_value2 1059} {Layout_CovDetail_splitterWithPrefVal_value1 180} {Layout_CovDetail_splitterWithPrefVal_value2 1}}

# End MDI window settings

gui_set_env TOPLEVELS::TARGET_FRAME(CovDetail) ${CovTopLevel.1}
gui_set_env TOPLEVELS::TARGET_FRAME(CoverageTable) ${CovTopLevel.1}
gui_set_env TOPLEVELS::TARGET_FRAME(CoverageMap) ${CovTopLevel.1}
gui_update_statusbar_target_frame ${CovTopLevel.1}

#</WindowLayout>

#<Database>

# DVE Open design session: 

gui_set_precision 1s
gui_set_time_units 1s
#</Database>

# DVE Global setting session: 


# Global: Bus

# Global: Expressions

# Global: Signal Time Shift

# Global: Signal Compare

# Global: Signal Groups


# Global: Highlighting

# Global: Stack
gui_change_stack_mode -mode list

# Post database loading setting...

# Restore C1 time
gui_set_time -C1_only 0



# Save global setting...

# Wave/List view global setting
gui_cov_show_value -switch false

# Close all empty TopLevel windows
foreach __top [gui_ekki_get_window_ids -type TopLevel] {
    if { [llength [gui_ekki_get_window_ids -parent $__top]] == 0} {
        gui_close_window -window $__top
    }
}
gui_set_loading_session_type noSession
# DVE View/pane content session: 

gui_list_set_filter -id ${CovHier.1} -list { {Cover Property 1} {All 1} {Cover Sequence 1} {Assertion 1} {Cover Group 1} }
gui_list_set_filter -id ${CovHier.1} -text {*}

# Source 'CovDetail.1'
gui_src_value_annotate -id ${CovDetail.1} -switch false
gui_set_env TOGGLE::VALUEANNOTATE 0
gui_view_scroll -id ${CovDetail.1} -vertical -set 0
gui_src_set_reusable -id ${CovDetail.1}

# Restore toplevel window zorder
# The toplevel window could be closed if it has no view/pane
if {[gui_exist_window -window ${CovTopLevel.1}]} {
	gui_set_active_window -window ${CovTopLevel.1}
	gui_set_active_window -window ${CovDetail.1}
}
#</Session>

