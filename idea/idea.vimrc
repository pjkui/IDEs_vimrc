" M->cmd, A->option, C->control
" <ESC> - escape, <BS> - backspace, <CR> - return
" 参考idealVim action list
" leader
let mapleader = ","

" 启用vim surround功能
set surround
" 启用multi cursor
set multiple-cursors
" 显示行号
set nu
" 显示相对行号
set rnu
" 高亮搜索
set hlsearch
" 自动定位到输入中的字符串，不需要回车搜索
set incsearch
" 显示当前的模式
set showmode
" 共享系统粘贴板
set clipboard=unnamed
" 搜索时智能匹配大小写
set ignorecase smartcase

" Insert
inoremap jk <Esc>
" Normal
nnoremap dd ddzz
" Visual
vnoremap d dzz

" Normal + Visual
noremap # #zz
noremap * *zz
noremap w wzz
noremap W Wzz
noremap e ezz
noremap E Ezz
noremap b bzz
noremap B Bzz
noremap H Hzz
noremap L Lzz
noremap 0 0zz
noremap $ $zz
noremap ^ ^zz
noremap k kzz
noremap G Gzz
noremap u uzz
noremap ( (zz
noremap ) )zz
noremap { {zz
noremap } }zz
noremap [{ [{zz
noremap ]} ]}zz
noremap gd gdzz
noremap <C-O> <ESC>:action Back<CR>
noremap <C-I> <ESC>:action Forward<CR>
noremap <C-D> <C-D>zz
noremap <C-U> <C-U>zz
" E和R是为了保持与Chrome中的SurfingKeys的键位一致
noremap E gT
noremap R gt
noremap J <ESC>:action EditorJoinLines<CR>

" 个人习惯
noremap <leader>` <ESC>:action SelectInProjectView<CR>

" Leader key relevant
" quit
noremap <leader>q :wq<CR>
" write to favorite
noremap <leader>w <ESC>:action AddToFavoritesPopup<CR>
" error description
noremap <leader>e <ESC>:action ShowErrorDescription<CR>
" return
noremap <leader>r <ESC>:action Rerun<CR>
" Windows或者MacOS的快捷键都与t相关, 所以选择t作为键
noremap <leader>t <ESC>:action Refactorings.QuickListPopupAction<CR>
" y
"noremap <leader>y <ESC>:action <CR>
" usage
noremap <leader>u <ESC>:action ShowUsages<CR>
noremap ca <ESC>:action ShowUsages<CR>
" import
noremap <leader>i <ESC>:action Maven.Reimport<CR>
" open file path
noremap <leader>o <ESC>:action ShowFilePath<CR>
" show projects
noremap <leader>p <ESC>:action ManageRecentProjects<CR>

" ace jump
noremap <leader>a <ESC>:action emacsIDEAs.AceJumpWord<CR>
" structure
noremap <leader>s <ESC>:action FileStructurePopup<CR>
" debug option
noremap <leader>d <ESC>:action ChooseDebugConfiguration<CR>
" 同样也是debug，因为d已经被ChooseDebugConfiguration占领, 所以就放在了d键隔壁.
noremap <leader>f <ESC>:action DebugClass<CR>
" g
noremap <leader>g <ESC>:action Generate<CR>
" hide all
noremap <leader>h <ESC>:action HideAllWindows<CR>
" jump to next error
noremap <leader>j <ESC>:action GotoNextError<CR>
" jump to previous error，就近原则
noremap <leader>k <ESC>:action GotoPreviousError<CR>
" light up
noremap <leader>l <ESC>:action HighlightUsagesInFile<CR>
" 粘贴最近复制寄存器
noremap <leader>; "0p
" Build

noremap ,b <ESC>:action RebuildGradleProject<CR>
noremap <leader>b <ESC>:action RebuildGradleProject<CR>

" 本行皆为debug所用
" resume - z
noremap <leader>z <ESC>:action Resume<CR>
" step over
noremap <leader>x <ESC>:action StepOver<CR>
" step into
noremap <leader>c <ESC>:action SmartStepInto<CR>
" evaluate expression - v
noremap <leader>v <ESC>:action EvaluateExpression<CR>
" breakpoints
noremap <leader>b <ESC>:action ViewBreakpoints<CR>
" 因为属于breakpoint范畴的功能, 所以就选择了b和m的隔壁
noremap <leader>n <ESC>:action ToggleLineBreakpoint<CR>
" mute breakpoints
noremap <leader>m <ESC>:action XDebugger.MuteBreakpoints<CR>

" g key relevant
"
" q
"noremap gq <ESC>:action <CR>
" switcher
noremap gw <ESC>:action RecentFiles<CR>
" e
"noremap ge <ESC>:action <CR>
" r
"noremap gr <ESC>:action <CR>
" translator(third party plugin)
noremap et <ESC>:action $EditorTranslateAction<CR>
" y
noremap gy <ESC>:action CopyReference<CR>
" u
"noremap gu <ESC>:action <CR>
" intention
noremap gi <ESC>:action ShowIntentionActions<CR>
" o
"noremap go <ESC>:action <CR>
" param info
noremap gp <ESC>:action ParameterInfo<CR>

" a
noremap ga <ESC>:action GotoAction<CR>
" goto source
noremap gs <ESC>:action GotoImplementation<CR>
" goto declaration
noremap gd <ESC>:action GotoDeclaration<CR>
" goto file
noremap gf <ESC>:action GotoFile<CR>
" g
"noremap gg <ESC>:action MUST_NOT_BE_CHANGED!!!<CR>
" hierarchy
noremap ghc <ESC>:action CallHierarchy<CR>
noremap ght <ESC>:action TypeHierarchy<CR>
noremap ghm <ESC>:action MethodHierarchy<CR>
" j analyze data flow in
noremap gj <ESC>:action SliceBackward<CR>
" k analyze data flow out
noremap gk <ESC>:action SliceForward<CR>
" l
"noremap gl <ESC>:action <CR>

" z
"noremap gz <ESC>:action <CR>
" close all but this
noremap gx <ESC>:action CloseAllEditorsButActive<CR>
" compile
noremap cd <ESC>:action CompileDirty<CR>
" v
"noremap gv <ESC>:action <CR>
" b
noremap gb <ESC>:action FindBugs.CurrentFileAction<CR>
" goto class
noremap gc <ESC>:action GotoClass<CR>
" goto method
noremap gm <ESC>:action GotoSymbol<CR>
noremap gt <ESC>:action GotoSymbol<CR>
noremap ,t <ESC>:action GotoSymbol<CR>

" \ also works
"noremap \q <ESC>:action <CR>
" refresh
noremap \r <ESC>:source ~/.ideavimrc<CR>
noremap \e <ESC>:e ~/.ideavimrc<CR>
" uml popup
noremap \u <ESC>:action ShowUmlDiagramPopup<CR>
" git flow
noremap \[ <ESC>:action Gitflow.OpenGitflowPopup<CR>
" Vcs
noremap \] <ESC>:action Vcs.QuickListPopupAction<CR>

" global find
noremap g/ <ESC>:action FindInPath<CR>
" gloaal replace
noremap g' <ESC>:action ReplaceInPath<CR>
" find
noremap / <ESC>:action Find<CR>
" replace
noremap ' <ESC>:action Replace<CR>
" previous method
noremap [[ <ESC>:action MethodUp<CR>
" next method
noremap ]] <ESC>:action MethodDown<CR>

" multiple cursors
map <A-M>  <A-N>
set clipboard+=ideaput
""--- Actions ---
""$Copy                                              <C-C> <C-Ins>
""$Cut                                               <C-X> <S-Del>
""$Delete                                            <Del>
""$LRU
""$Paste                                             <C-V> <S-Ins>
""$Redo                                              <C-S-Z> <A-S-BS>
""$SearchWeb
""$SelectAll                                         <C-A>
""$Undo                                              <C-Z> <A-BS>
""<anonymous-group-0>
""<anonymous-group-10>
""<anonymous-group-11>
""<anonymous-group-12>
""<anonymous-group-13>
""<anonymous-group-14>
""<anonymous-group-15>
""<anonymous-group-16>
""<anonymous-group-1>
""<anonymous-group-2>
""<anonymous-group-3>
""<anonymous-group-4>
""<anonymous-group-5>
""<anonymous-group-6>
""<anonymous-group-7>
""<anonymous-group-8>
""<anonymous-group-9>
"About
"ActivateDatabaseChangesToolWindow
"ActivateDatabaseToolWindow
"ActivateDuplicatesToolWindow
"ActivateEventLogToolWindow
"ActivateFavoritesToolWindow                        <A-2>
"ActivateNavBar
"ActivateProjectToolWindow                          <A-1>
"ActivateServicesToolWindow                         <A-8>
"ActivateStructureToolWindow                        <A-7>
"ActivateTerminalToolWindow                         <A-F12>
"ActivateTODOToolWindow                             <A-6>
"ActivateVersionControlToolWindow                   <A-9> <A-S-9>
"ActiveToolwindowGroup
"AddAllToFavorites
"AddAttributeAction
"AddNewFavoritesList
"AddPhingBuildFile
"AddSourcesContentToSourceMap
"AddSubtagAction
"AddToFavorites
"AddToFavoritesPopup                                <A-S-F>
"AnalyzePlatformMenu
"angularCliAdd
"angularCliGenerate
"AngularJS.Show.Ui.Router.States.Diagram.Action
"Annotate
"Arrangement.Alias.Rule.Add                         <A-Ins>
"Arrangement.Alias.Rule.Context.Menu
"Arrangement.Alias.Rule.Edit                        <F2>
"Arrangement.Alias.Rule.Match.Condition.Move.Down   <A-Down>
"Arrangement.Alias.Rule.Match.Condition.Move.Up     <A-Up>
"Arrangement.Alias.Rule.Remove                      <Del>
"Arrangement.Alias.Rule.ToolBar
"Arrangement.Custom.Token.Rule.Edit
"Arrangement.Rule.Add                               <A-Ins>
"Arrangement.Rule.Edit                              <F2>
"Arrangement.Rule.Group.Condition.Move.Down         <A-Down>
"Arrangement.Rule.Group.Condition.Move.Up           <A-Up>
"Arrangement.Rule.Group.Control.ToolBar
"Arrangement.Rule.Match.Condition.Move.Down         <A-Down>
"Arrangement.Rule.Match.Condition.Move.Up           <A-Up>
"Arrangement.Rule.Match.Control.Context.Menu
"Arrangement.Rule.Match.Control.ToolBar
"Arrangement.Rule.Remove                            <Del>
"Arrangement.Rule.Section.Add
"AssociateWithFileType
"AttachProject
"AutoIndentLines                                    <A-C-I>
"AutoShowProcessWindow
"Back                                               <A-C-Left> button=4 clickCount=1 modifiers=0
"BackgroundTasks
"Bash.AddReplAction
"Bash.NewBashScript
"Bash.REPL.Group
"bash.reportType
"BasicEditorPopupMenu
"Bookmarks
"BraceOrQuoteOut                                    <Tab>
"BrowseShelf
"BuildMenu
"CallHierarchy                                      <A-C-H>
"CallHierarchy.BaseOnThisMethod                     <A-C-H>
"CallHierarchyPopupMenu
"CaptureCPUUsageData
"CaptureMemorySnapShot
"ChangeAttributeValueAction
"ChangeCodeStyleScheme
"ChangeColorScheme
"ChangeFileEncodingAction
"ChangeInspectionProfile
"ChangeKeymap
"ChangeLaf
"ChangeLineSeparators
"ChangeScheme
"ChangeSignature                                    <C-F6>
"ChangeSplitOrientation
"ChangesView.AddUnversioned                         <A-C-A>
"ChangesView.ApplyPatch
"ChangesView.ApplyPatchFromClipboard
"ChangesView.Browse
"ChangesView.CommitToolbar
"ChangesView.CreatePatch
"ChangesView.CreatePatchFromChanges
"ChangesView.CreatePatchToClipboard
"ChangesView.Diff                                   <C-D>
"ChangesView.Edit
"ChangesView.GroupBy
"ChangesView.GroupBy.Directory                      <A-C-P>
"ChangesView.GroupBy.Repository
"ChangesView.Move                                   <A-S-M>
"ChangesView.NewChangeList
"ChangesView.Refresh
"ChangesView.RemoveChangeList
"ChangesView.RemoveDeleted
"ChangesView.Rename                                 <F2> <S-F6>
"ChangesView.Revert                                 <A-C-Z>
"ChangesView.SetDefault                             <C- >
"ChangesView.Shelve
"ChangesView.ShelveSilently                         <C-S-H>
"ChangesView.ShowCommitOptions
"ChangesView.UnshelveSilently                       <A-C-U>
"ChangesView.ViewOptions
"ChangesView.ViewOptions.ShowRelatedFiles
"ChangesViewPopupMenu
"ChangesViewToolbar
"ChangeTemplateDataLanguage
"ChangeView
"CheckForUpdate
"CheckinFiles
"CheckinProject                                     <C-K>
"CheckStatusForFiles
"ChooseDebugConfiguration                           <A-S-F9>
"ChooseRunConfiguration                             <A-S-F10>
"ClassNameCompletion                                <A-C- >
"CloseActiveTab                                     <C-S-F4>
"CloseAllEditors
"CloseAllEditorsButActive
"CloseAllNotifications
"CloseAllToTheLeft
"CloseAllToTheRight
"CloseAllUnmodifiedEditors
"CloseAllUnpinnedEditors
"CloseContent                                       <C-F4>
"CloseEditor
"CloseEditorsGroup
"CloseFirstNotification
"CloseProject
"CloudConfigAction
"CloudConfigActionGroup
"CloudConfigDisableAction
"CloudConfigPluginsAction
"CloudConfigSilentlyAction
"CloudConfigUpdateApi
"CodeceptionNewCestTestFromClass
"CodeceptionNewUnitTestFromClass
"CodeCleanup
"CodeCompletion                                     <C- >
"CodeCompletionGroup
"CodeEditorBaseGroup
"CodeEditorViewGroup
"CodeFormatGroup
"CodeInsightEditorActions
"CodeInspection.OnEditor                            <A-S-I>
"CodeMenu
"CollapseAll                                        <C-m> <C-->
"CollapseAllRegions                                 <C-S-m> <C-S-->
"CollapseBlock                                      <C-S-.>
"CollapseDocComments
"CollapseExpandableComponent                        <S-CR> <C-m> <C-->
"CollapseRegion                                     <C-m> <C-->
"CollapseRegionRecursively                          <A-C-m> <A-C-->
"CollapseSelection                                  <C-.>
"CollapseTreeNode                                   <m>
"CollectTroubleshootingInformation
"CollectZippedLogs
"com.intellij.ws.actions.ConvertCurlToHttpRequestAction
"com.jetbrains.php.composer.ComposerInitSupportAction
"com.jetbrains.php.drupal.DrupalSearchDocsAction
"com.jetbrains.php.framework.FrameworkRunConsoleAction <C-S-X>
"com.jetbrains.php.internal.PhpShowFQNInternalAction
"com.jetbrains.php.internal.PhpShowTypeInfoAction
"com.jetbrains.php.wordpress.WPSearchDocsAction
"com.jetbrains.plugins.remotesdk.console.RunSshConsoleAction
"com.jetbrains.plugins.vagrant.actions.VagrantDestroyAction
"com.jetbrains.plugins.vagrant.actions.VagrantHaltAction
"com.jetbrains.plugins.vagrant.actions.VagrantInitInProjectAction
"com.jetbrains.plugins.vagrant.actions.VagrantProvisionAction
"com.jetbrains.plugins.vagrant.actions.VagrantReloadAction
"com.jetbrains.plugins.vagrant.actions.VagrantResumeAction
"com.jetbrains.plugins.vagrant.actions.VagrantShareAction
"com.jetbrains.plugins.vagrant.actions.VagrantSuspendAction
"com.jetbrains.plugins.vagrant.actions.VagrantUpAction
"CommentByBlockComment                              <C-S-/> <C-S-o>
"CommentByLineComment                               <C-/> <C-o>
"CommentGroup
"CommittedChanges.Clear
"CommittedChanges.Details
"CommittedChanges.Filter
"CommittedChanges.Refresh
"CommittedChanges.Revert
"CommittedChangesToolbar
"Compare.LastVersion
"Compare.SameVersion
"Compare.Selected
"Compare.Specified
"CompareActions
"CompareClipboardWithSelection
"CompareDirs                                        <C-D>
"CompareFileWithEditor
"CompareTwoFiles                                    <C-D>
"CompileCoffeeScript
"ComposerAddDependencyAction
"ComposerClearCacheAction
"ComposerConfigGroup
"ComposerDiagnoseAction
"ComposerDumpAutoloadAction
"ComposerGroup
"ComposerInstallAction
"ComposerLicensesAction
"ComposerSelfUpdateAction
"ComposerShowLogAction
"ComposerStatusAction
"ComposerToolsGroup
"ComposerUpdateAction
"ComposerValidateAction
"ConfigureEditorTabs
"ConfigureIcs
"ConfigureSoftWraps
"Console.Dialect.SpecificGroup
"Console.EditorTableResult.Group
"Console.Execute                                    <CR>
"Console.Execute.Multiline                          <C-CR>
"Console.History.Browse                             <A-C-E>
"Console.History.Next
"Console.History.Previous
"Console.HistoryActions
"Console.Jdbc.BrowseHistory                         <A-C-E>
"Console.Jdbc.ChooseSchema
"Console.Jdbc.ChooseSession
"Console.Jdbc.Common
"Console.Jdbc.Debug
"Console.Jdbc.Execute                               <C-CR>
"Console.Jdbc.Execute.2
"Console.Jdbc.Execute.3
"Console.Jdbc.ExplainPlan
"Console.Jdbc.ExplainPlan.Raw
"Console.Jdbc.Left
"Console.Jdbc.Right
"Console.Jdbc.RunContextGroup
"Console.Jdbc.Terminate                             <C-F2>
"Console.Jdbc.ToggleParameters
"Console.JdbcActions
"Console.Open                                       <C-S-F10>
"Console.Oracle.DbmsOutput                          <C-F8>
"Console.SplitLine                                  <C-CR>
"Console.TableResult.AddColumn                      <A-S-Ins>
"Console.TableResult.AddRow                         <A-Ins>
"Console.TableResult.Cancel                         <C-F2>
"Console.TableResult.CellEditor.Popup
"Console.TableResult.ChangeCellEditorFileEncoding
"Console.TableResult.ChangeCellEditorLanguage
"Console.TableResult.ChangeColumnLanguage
"Console.TableResult.ChangeIsolation
"Console.TableResult.ChangePageSize
"Console.TableResult.ChooseExtractor
"Console.TableResult.CloneColumn                    <A-C-S-D>
"Console.TableResult.CloneRow                       <C-D>
"Console.TableResult.ColumnActions
"Console.TableResult.ColumnHeaderPopup
"Console.TableResult.ColumnsList                    <C-F12>
"Console.TableResult.ColumnSortAsc                  <A-S-Up>
"Console.TableResult.ColumnSortDesc                 <A-S-Down>
"Console.TableResult.ColumnSortingActions
"Console.TableResult.ColumnSortReset                <A-C-S-BS>
"Console.TableResult.ColumnVisibility               < >
"Console.TableResult.CompareCells                   <C-S-D>
"Console.TableResult.CompareWith
"Console.TableResult.Copy.ChooseExtractorGroup
"Console.TableResult.Copy.Csv.Settings
"Console.TableResult.Copy.DumpToClipboard
"Console.TableResult.Copy.DumpToFile
"Console.TableResult.CountRows
"Console.TableResult.Csv.PopupGroup
"Console.TableResult.Csv.PreviewPopupGroup
"Console.TableResult.Data
"Console.TableResult.DeleteColumns                  <A-S-Del>
"Console.TableResult.DeleteRows                     <C-Y>
"Console.TableResult.DocumentTableHeader.AddColumn
"Console.TableResult.DocumentTableHeader.CloneColumn
"Console.TableResult.DocumentTableHeader.DeleteColumn
"Console.TableResult.DumpGroup
"Console.TableResult.EditFilterCriteria             <A-C-S-F>
"Console.TableResult.EditValue                      <F2> <CR> <A-CR>
"Console.TableResult.EditValueMaximized             <S-CR> <A-S-CR>
"Console.TableResult.Filter.Custom
"Console.TableResult.FindInGrid                     <C-F> <A-F3>
"Console.TableResult.FirstPage
"Console.TableResult.GoToGroup
"Console.TableResult.Group
"Console.TableResult.Group.Secondary
"Console.TableResult.HideColumn
"Console.TableResult.ImportTable
"Console.TableResult.LastPage
"Console.TableResult.LoadFile
"Console.TableResult.MaximizeEditingCell            <A-C-S-M>
"Console.TableResult.MutationsGroup
"Console.TableResult.NavigateAction                 <F4>
"Console.TableResult.NavigateExportedAction         <A-F7>
"Console.TableResult.NavigateForeignAction          <C-B> button=1 clickCount=1 modifiers=128 button=2 clickCount=1 modifiers=0
"Console.TableResult.NavigationAndEditing.Group
"Console.TableResult.NextPage                       <A-C-Down>
"Console.TableResult.Options
"Console.TableResult.PasteFormat
"Console.TableResult.PopupGroup
"Console.TableResult.PreviousPage                   <A-C-Up>
"Console.TableResult.Reload                         <C-F5>
"Console.TableResult.RenameTab
"Console.TableResult.ResetView
"Console.TableResult.RevertSelected                 <A-C-Z>
"Console.TableResult.SaveLobAs
"Console.TableResult.SelectRow                      <S- >
"Console.TableResult.SetDefault                     <A-C-D>
"Console.TableResult.SetNull                        <A-C-N>
"Console.TableResult.ShowQuery
"Console.TableResult.SortToggle
"Console.TableResult.Submit                         <C-CR>
"Console.TableResult.SubmitAndCommit                <A-C-S-CR>
"Console.TableResult.ToggleFilters
"Console.TableResult.Transpose
"Console.TabPopupGroup
"Console.Transaction
"Console.Transaction.Commit                         <A-C-S-CR>
"Console.Transaction.RevertAndRollback
"Console.Transaction.Rollback
"Console.Transaction.TxSettings
"ConsoleEditorPopupMenu
"ConsoleView.ClearAll
"ConsoleView.PopupMenu
"ConsoleView.ShowAsJsonAction
"context.clear                                      <A-S-X>
"context.load                                       <A-S-L>
"context.save                                       <A-S-S>
"ContextHelp                                        <F1>
"ConvertContentsToAttributeAction
"ConvertIndentsGroup
"ConvertIndentsToSpaces
"ConvertIndentsToTabs
"ConvertSchemaAction
"ConvertToMacLineSeparators
"ConvertToUnixLineSeparators
"ConvertToWindowsLineSeparators
"CopyAsPlainText
"CopyAsRichText
"CopyElement                                        <F5>
"CopyPaths                                          <C-S-C>
"CopyReference                                      <A-C-S-C>
"CopySettingsPath
"CopyTBXReference
"CopyUrl
"Coverage
"CoverageMenu
"CoveragePlatformMenu
"CreateDesktopEntry
"CreateEditorConfigFile
"CreateLauncherScript
"CreateRunConfiguration
"CreateVueSingleFileComp
"CreateWebProject
"CutCopyPasteGroup
"Database.Settings
"DatabaseView.AddActionGroup
"DatabaseView.AddActionGroupPopup
"DatabaseView.AddDataSourceFromPath
"DatabaseView.AddDataSourceFromThat
"DatabaseView.AddDataSourceFromUrl
"DatabaseView.AddDataSourceHere
"DatabaseView.AddDataSourcesGroup
"DatabaseView.AddDriver
"DatabaseView.AddDriverAndDataSource
"DatabaseView.AddSchemasAction
"DatabaseView.AssignColor
"DatabaseView.BatchModifyIndices
"DatabaseView.CloseConnectionAction                 <C-F2>
"DatabaseView.CopyAction                            <C-D>
"DatabaseView.CopyDataSourceSettings
"DatabaseView.CopyDdlAction                         <A-C-S-G> <C-S-C>
"DatabaseView.CopyDdlFromDbAction
"DatabaseView.CopyTable                             <F5>
"DatabaseView.CreateDataSourceFromSettings
"DatabaseView.Ddl.AddColumn
"DatabaseView.Ddl.AddDatabase
"DatabaseView.Ddl.AddForeignKey
"DatabaseView.Ddl.AddIndex
"DatabaseView.Ddl.AddPrimaryKey
"DatabaseView.Ddl.AddSchema
"DatabaseView.Ddl.AddTable
"DatabaseView.Ddl.BatchAddIndices
"DatabaseView.Ddl.CommentOnObject
"DatabaseView.Ddl.DropForeignKey
"DatabaseView.Ddl.DropPrimaryKey
"DatabaseView.DebugRoutine
"DatabaseView.DropAction                            <Del>
"DatabaseView.Dump.FileGroup
"DatabaseView.Dump.Native
"DatabaseView.ExecuteRoutine
"DatabaseView.FilterAction
"DatabaseView.ForceRefresh                          <C-S-F5>
"DatabaseView.ForgetSchemaAction
"DatabaseView.FullTextSearch                        <A-C-S-F>
"DatabaseView.GoToScriptsDirectory
"DatabaseView.HideSchemasAction
"DatabaseView.Import
"DatabaseView.ImportDataSources
"DatabaseView.ImportFromSql
"DatabaseView.MoveToGroup                           <F6>
"DatabaseView.OpenDdlInConsole                      <A-C-S-B>
"DatabaseView.PropertiesAction                      <S-CR>
"DatabaseView.Refresh                               <C-F5>
"DatabaseView.Restore.Native
"DatabaseView.RunExtensionScriptGroup
"DatabaseView.Scripted.Extensions
"DatabaseView.ShowContentDiff
"DatabaseView.ShowDiff                              <C-D>
"DatabaseView.SqlGenerator                          <A-C-G>
"DatabaseView.Tools                                 <A-CR>
"DatabaseView.Tools.RecompileAction
"DatabaseView.Tools.RefreshMatViewAction
"DatabaseView.Tools.TruncateTableAction
"DatabaseViewPopupMenu
"DatabaseViewToolbar
"DBGPProxy.Configuration
"DBGPProxy.Init
"DBGPProxy.Stop
"DBGPProxyGroup
"Debug                                              <S-F9>
"DebugClass
"Debugger.AddToWatch
"Debugger.CopyStack
"Debugger.EvaluateInConsole
"Debugger.FocusOnBreakpoint
"Debugger.MarkObject                                <F11>
"Debugger.RemoveAllBreakpoints
"Debugger.RemoveAllBreakpointsInFile
"Debugger.RestoreBreakpoint
"Debugger.ShowLibraryFrames
"Debugger.ShowReferring
"Debugger.Tree.EvaluateInConsole
"DebugMainMenu
"DecreaseColumnWidth                                <C-S-Left>
"DecrementWindowHeight                              <C-S-Up>
"DecrementWindowWidth                               <C-S-Left>
"DelegateMethods
"DeleteAttributeAction
"DeleteTagAction
"DeploymentVcsActions
"DiagnosticGroup
"Diagram.DeselectAll                                <A-C-A>
"Diagram.SelectAll                                  <C-A>
"Diff.AppendLeftSide
"Diff.AppendRightSide
"Diff.ApplyLeftSide                                 <A-S-Right>
"Diff.ApplyNonConflicts
"Diff.ApplyNonConflicts.Left
"Diff.ApplyNonConflicts.Right
"Diff.ApplyRightSide                                <A-S-Left>
"Diff.ComparePartial.Base.Left
"Diff.ComparePartial.Base.Right
"Diff.ComparePartial.Left.Right
"Diff.CompareWithBase.Left
"Diff.CompareWithBase.Result
"Diff.CompareWithBase.Right
"Diff.EditorGutterPopupMenu
"Diff.EditorGutterPopupMenu.EditorSettings
"Diff.EditorPopupMenu
"Diff.FocusOppositePane                             <C-Tab>
"Diff.FocusOppositePaneAndScroll                    <C-S-Tab>
"Diff.IgnoreLeftSide
"Diff.IgnoreRightSide
"Diff.KeymapGroup
"Diff.MagicResolveConflicts
"Diff.NextChange                                    <A-Right>
"Diff.NextConflict
"Diff.PrevChange                                    <A-Left>
"Diff.PreviousConflict
"Diff.ResolveConflict
"Diff.ShowDiff                                      <C-D>
"Diff.ShowInExternalTool
"Diff.ShowSettingsPopup                             <C-S-D>
"Diff.ViewerPopupMenu
"Diff.ViewerToolbar
"DirDiffMenu
"DirDiffMenu.CancelComparingNewFilesWithEachOther
"DirDiffMenu.CompareNewFilesWithEachOtherAction
"DirDiffMenu.EnableEqual
"DirDiffMenu.EnableLeft
"DirDiffMenu.EnableNotEqual
"DirDiffMenu.EnableRight
"DirDiffMenu.MirrorToLeft
"DirDiffMenu.MirrorToRight
"DirDiffMenu.SetCopyToLeft
"DirDiffMenu.SetCopyToRight
"DirDiffMenu.SetDefault
"DirDiffMenu.SetDelete
"DirDiffMenu.SetNoOperation
"DirDiffMenu.SynchronizeDiff                        <CR>
"DirDiffMenu.SynchronizeDiff.All                    <C-CR>
"DirDiffMenu.WarnOnDeletion
"DirDiffOperationsMenu
"DisableInspection
"Docker.RemoteServers.Attach2Container
"Docker.RemoteServers.CopyContainerId
"Docker.RemoteServers.CopyContainerImageId
"Docker.RemoteServers.CopyImageId
"Docker.RemoteServers.CreateContainer
"Docker.RemoteServers.DeleteContainer
"Docker.RemoteServers.DeleteImage
"Docker.RemoteServers.DownComposeApp
"Docker.RemoteServers.ExecInContainer
"Docker.RemoteServers.FilterGroup
"Docker.RemoteServers.FilterStoppedContainers
"Docker.RemoteServers.FilterUntaggedImages
"Docker.RemoteServers.InspectContainerOrImage
"Docker.RemoteServers.PullImage
"Docker.RemoteServers.PushImage
"Docker.RemoteServers.ScaleComposeService
"Docker.RemoteServers.ShowContainerLog
"Docker.RemoteServers.ShowContainerProcesses
"Docker.RemoteServers.StartComposeService
"Docker.RemoteServers.StartContainer
"Docker.RemoteServers.StopComposeApp
"Docker.RemoteServers.StopComposeService
"Docker.RemoteServers.StopContainer
"Docker.RemoteServersViewPopup
"Docker.RemoteServersViewToolbar
"Docker.RemoteServersViewToolbar.Top
"DockPinnedMode
"DockUnpinnedMode
"Document2XSD
"DomCollectionControl
"DomCollectionControl.Add                           <Ins>
"DomCollectionControl.Edit                          <F4>
"DomCollectionControl.Remove                        <Del>
"DomElementsTreeView.AddElement                     <Ins>
"DomElementsTreeView.AddElementGroup
"DomElementsTreeView.DeleteElement                  <Del>
"DomElementsTreeView.GotoDomElementDeclarationAction <F4>
"DomElementsTreeView.TreePopup
"DumpLookupElementWeights                           <A-C-S-W>
"DuplicatesForm.SendToLeft                          <C-1>
"DuplicatesForm.SendToRight                         <C-2>
"DupLocate
"Dvcs.FileHistory.ContextMenu
"Dvcs.Log.ContextMenu
"Dvcs.Log.Toolbar
"EditBookmarksGroup
"EditBreakpoint                                     <C-S-F8>
"EditCommitMessage
"EditCreateDeleteGroup
"EditCustomProperties
"EditCustomVmOptions
"EditFavorites
"EditInspectionSettings
"EditMacros
"EditMenu
"Editor.JSLibrariesMenu
"Editor.JSLibrariesMenu.LibraryList
"EditorActions
"EditorAddOrRemoveCaret                             button=1 clickCount=1 modifiers=512
"EditorAddRectangularSelectionOnMouseDrag           button=1 clickCount=1 modifiers=704
"EditorBackSpace                                    <BS> <S-BS>
"EditorBackwardParagraph
"EditorBackwardParagraphWithSelection
"EditorBidiTextDirection
"EditorBreadcrumbsHideBoth
"EditorBreadcrumbsSettings
"EditorBreadcrumbsShowAbove
"EditorBreadcrumbsShowBelow
"EditorChooseLookupItem                             <CR>
"EditorChooseLookupItemCompleteStatement            <C-S-CR>
"EditorChooseLookupItemDot                          <C-.>
"EditorChooseLookupItemReplace                      <Tab>
"EditorCloneCaretAbove
"EditorCloneCaretBelow
"EditorCodeBlockEnd                                 <C-]>
"EditorCodeBlockEndWithSelection                    <C-S-]>
"EditorCodeBlockStart                               <C-[>
"EditorCodeBlockStartWithSelection                  <C-S-[>
"EditorCompleteStatement                            <C-S-CR>
"EditorContextBarMenu
"EditorContextInfo                                  <A-Q>
"EditorCopy                                         <C-C> <C-Ins>
"EditorCreateRectangularSelection                   button=2 clickCount=1 modifiers=576
"EditorCreateRectangularSelectionOnMouseDrag        button=1 clickCount=1 modifiers=576 button=2 clickCount=1 modifiers=0
"EditorCut                                          <C-X> <S-Del>
"EditorCutLineBackward
"EditorCutLineEnd
"EditorDecreaseFontSize
"EditorDelete                                       <Del>
"EditorDeleteLine                                   <C-Y>
"EditorDeleteToLineEnd
"EditorDeleteToLineStart
"EditorDeleteToWordEnd                              <C-Del>
"EditorDeleteToWordEndInDifferentHumpsMode
"EditorDeleteToWordStart                            <C-BS>
"EditorDeleteToWordStartInDifferentHumpsMode
"EditorDown                                         <Down>
"EditorDownWithSelection                            <S-Down>
"EditorDuplicate                                    <C-D>
"EditorDuplicateLines
"EditorEnter                                        <CR>
"EditorEscape                                       <Esc>
"EditorFocusGutter                                  <A-S-6>
"EditorForwardParagraph
"EditorForwardParagraphWithSelection
"EditorGutterPopupMenu
"EditorGutterToggleGlobalIndentLines
"EditorGutterToggleGlobalLineNumbers
"EditorGutterVcsPopupMenu
"EditorHungryBackSpace
"EditorIncreaseFontSize
"EditorIndentLineOrSelection
"EditorIndentSelection                              <Tab>
"EditorJoinLines                                    <C-S-J>
"EditorKillRegion
"EditorKillRingSave
"EditorKillToWordEnd
"EditorKillToWordStart
"EditorLangPopupMenu
"EditorLeft                                         <Left>
"EditorLeftWithSelection                            <S-Left>
"EditorLineEnd                                      <End>
"EditorLineEndWithSelection                         <S-End>
"EditorLineStart                                    <Home>
"EditorLineStartWithSelection                       <S-Home>
"EditorLookupDown                                   <C-Down>
"EditorLookupUp                                     <C-Up>
"EditorMatchBrace                                   <C-S-M>
"EditorMoveDownAndScroll
"EditorMoveDownAndScrollWithSelection
"EditorMoveToPageBottom                             <C-Pagedown>
"EditorMoveToPageBottomWithSelection                <C-S-Pagedown>
"EditorMoveToPageTop                                <C-Pageup>
"EditorMoveToPageTopWithSelection                   <C-S-Pageup>
"EditorMoveUpAndScroll
"EditorMoveUpAndScrollWithSelection
"EditorNextWord                                     <C-Right>
"EditorNextWordInDifferentHumpsMode
"EditorNextWordInDifferentHumpsModeWithSelection
"EditorNextWordWithSelection                        <C-S-Right>
"EditorPageDown                                     <Pagedown>
"EditorPageDownWithSelection                        <S-Pagedown>
"EditorPageUp                                       <Pageup>
"EditorPageUpWithSelection                          <S-Pageup>
"EditorPaste                                        <C-V> <S-Ins>
"EditorPasteFromX11                                 button=2 clickCount=1 modifiers=0
"EditorPasteSimple                                  <A-C-S-V>
"EditorPopupMenu
"EditorPopupMenu.GoTo
"EditorPopupMenu.Run
"EditorPopupMenu1
"EditorPopupMenu1.FindRefactor
"EditorPopupMenu2
"EditorPopupMenu3
"EditorPopupMenuDebug
"EditorPreviousWord                                 <C-Left>
"EditorPreviousWordInDifferentHumpsMode
"EditorPreviousWordInDifferentHumpsModeWithSelection
"EditorPreviousWordWithSelection                    <C-S-Left>
"EditorResetFontSize
"EditorRight                                        <Right>
"EditorRightWithSelection                           <S-Right>
"EditorScrollBottom
"EditorScrollDown                                   <C-Down>
"EditorScrollDownAndMove
"EditorScrollLeft
"EditorScrollRight
"EditorScrollToCenter                               <C-M>
"EditorScrollTop
"EditorScrollUp                                     <C-Up>
"EditorScrollUpAndMove
"EditorSelectLine
"EditorSelectWord                                   <C-W>
"EditorSetContentBasedBidiTextDirection
"EditorSetLtrBidiTextDirection
"EditorSetRtlBidiTextDirection
"EditorShowGutterIconTooltip                        <A-S-6>
"EditorSplitLine                                    <C-CR>
"EditorStartNewLine                                 <S-CR>
"EditorStartNewLineBefore                           <A-C-CR>
"EditorSwapSelectionBoundaries
"EditorTab                                          <Tab>
"EditorTabPopupMenu
"EditorTabPopupMenuEx
"EditorTabsGroup
"EditorTextEnd                                      <C-End>
"EditorTextEndWithSelection                         <C-S-End>
"EditorTextStart                                    <C-Home>
"EditorTextStartWithSelection                       <C-S-Home>
"EditorToggleActions
"EditorToggleCase                                   <C-S-U>
"EditorToggleColumnMode                             <A-S-Ins>
"EditorToggleInsertState                            <Ins>
"EditorToggleShowBreadcrumbs
"EditorToggleShowGutterIcons
"EditorToggleShowIndentLines
"EditorToggleShowLineNumbers
"EditorToggleShowWhitespaces
"EditorToggleStickySelection
"EditorToggleUseSoftWraps
"EditorToggleUseSoftWrapsInPreview
"EditorUnindentSelection                            <S-Tab>
"EditorUnSelectWord                                 <C-S-W>
"EditorUp                                           <Up>
"EditorUpWithSelection                              <S-Up>
"editRunConfigurations
"EditSelectGroup
"EditSelectWordGroup
"EditSmartGroup
"EditSource                                         <F4>
"EditSourceInNewWindow                              <S-F4>
"EmacsStyleIndent
"Emmet
"EmmetNextEditPoint                                 <A-S-]>
"EmmetPreview
"EmmetPreviousEditPoint                             <A-S-[>
"EmmetUpdateTag
"EmojiAndSymbols
"ES6.Generate.Index
"EscapeEntities
"EslintImportCodeStyle
"EvaluateExpression                                 <A-F8>
"Exit
"ExpandAll                                          <C-k> <C-=>
"ExpandAllRegions                                   <C-S-k> <C-S-=>
"ExpandAllToLevel
"ExpandAllToLevel1                                  <C-S-j> <C-S-j>
"ExpandAllToLevel2                                  <C-S-j> <C-S-j>
"ExpandAllToLevel3                                  <C-S-j> <C-S-j>
"ExpandAllToLevel4                                  <C-S-j> <C-S-j>
"ExpandAllToLevel5                                  <C-S-j> <C-S-j>
"ExpandDocComments
"ExpandExpandableComponent                          <S-CR> <C-k> <C-=>
"ExpandLiveTemplateByTab                            <Tab>
"ExpandLiveTemplateCustom
"ExpandRegion                                       <C-k> <C-=>
"ExpandRegionRecursively                            <A-C-k> <A-C-=>
"ExpandToLevel
"ExpandToLevel1                                     <C-j> <C-j>
"ExpandToLevel2                                     <C-j> <C-j>
"ExpandToLevel3                                     <C-j> <C-j>
"ExpandToLevel4                                     <C-j> <C-j>
"ExpandToLevel5                                     <C-j> <C-j>
"ExpandTreeNode                                     <k>
"ExportImportGroup
"ExportSettings
"ExportTestResults
"ExportToHTML
"ExportToTextFile                                   <A-O>
"ExpressionTypeInfo                                 <C-S-P>
"ExternalJavaDoc                                    <S-F1>
"ExternalSystem.Actions
"ExternalSystem.AfterCompile
"ExternalSystem.AfterRebuild
"ExternalSystem.AfterSync
"ExternalSystem.AssignRunConfigurationShortcut
"ExternalSystem.AssignShortcut
"ExternalSystem.BeforeCompile
"ExternalSystem.BeforeRebuild
"ExternalSystem.BeforeRun
"ExternalSystem.BeforeSync
"ExternalSystem.CollapseAll                         <C-m> <C-->
"ExternalSystem.CreateRunConfiguration
"ExternalSystem.DetachProject                       <Del>
"ExternalSystem.EditRunConfiguration
"ExternalSystem.ExpandAll                           <C-k> <C-=>
"ExternalSystem.GroupModules
"ExternalSystem.GroupTasks
"ExternalSystem.IgnoreProject
"ExternalSystem.OpenConfig                          <F4>
"ExternalSystem.OpenTasksActivationManager
"ExternalSystem.RefreshAllProjects
"ExternalSystem.RefreshProject
"ExternalSystem.RemoveRunConfiguration
"ExternalSystem.RunTask
"ExternalSystem.SelectProjectDataToImport
"ExternalSystem.ShowIgnored
"ExternalSystem.ShowInheritedTasks
"ExternalSystem.ShowSettings
"ExternalSystem.ToggleAutoImport
"ExternalSystemView.ActionsToolbar
"ExternalSystemView.ActionsToolbar.CenterPanel
"ExternalSystemView.ActionsToolbar.LeftPanel
"ExternalSystemView.ActionsToolbar.RightPanel
"ExternalSystemView.BaseProjectMenu
"ExternalSystemView.ModuleMenu
"ExternalSystemView.ProjectMenu
"ExternalSystemView.RunConfigurationMenu
"ExternalSystemView.TaskActivationGroup
"ExternalSystemView.TaskMenu
"ExternalToolsGroup
"ExtractClass
"ExtractInclude
"ExtractInterface
"ExtractMethod                                      <A-C-M>
"ExtractMethodToolWindow.TreePopup
"ExtractModule
"ExtractSuperclass
"FavoritesViewPopupMenu
"FileChooser
"FileChooser.Delete                                 <Del>
"FileChooser.GotoDesktop                            <C-D>
"FileChooser.GotoHome                               <C-1>
"FileChooser.GotoProject                            <C-2>
"FileChooser.NewFile
"FileChooser.NewFolder                              <A-Ins> <C-N>
"FileChooser.Refresh                                <A-C-Y>
"FileChooser.ShowHiddens
"FileChooser.TogglePathShowing                      <C-P>
"FileChooserToolbar
"FileEditor.OpenDataEditor
"FileHistory.AnnotateRevision
"FileHistory.KeymapGroup
"FileMainSettingsGroup
"FileMenu
"FileOpenGroup
"FileOtherSettingsGroup
"FileSettingsGroup
"FileStructurePopup                                 <C-F12>
"FileTemplateSeparatorGroup
"FileWatcher.runForFiles
"FillParagraph
"Find                                               <C-F> <A-F3>
"FindInPath                                         <C-S-F>
"FindMenuGroup
"FindModal
"FindNext                                           <F3> <C-L>
"FindPrevious                                       <S-F3> <C-S-L>
"FindUsages                                         <A-F7>
"FindUsagesInFile                                   <C-F7>
"FindWordAtCaret                                    <C-F3>
"FixDocComment
"FloatMode
"FlowJS.Restart.All.Servers
"FoldingGroup
"ForceRefresh                                       <C-S-F5>
"ForceRunToCursor                                   <A-C-F9>
"ForceStepInto                                      <A-S-F7>
"ForceStepOver                                      <A-S-F8>
"Forward                                            <A-C-Right> button=5 clickCount=1 modifiers=0
"FullyExpandTreeNode                                <j>
"Generate                                           <A-Ins>
"Generate.Constructor.JavaScript
"Generate.GetAccessor.JavaScript
"Generate.GetSetAccessor.JavaScript
"Generate.Missing.Members.ES6                       <C-I>
"Generate.Missing.Members.TypeScript                <C-I>
"Generate.SetAccessor.JavaScript
"GenerateCopyright
"GenerateCoverageReport
"GenerateDbObjectGroup
"GenerateDTD
"GenerateFromTestCreatorsGroup
"GenerateGroup
"GeneratePattern
"GenerateXmlTag
"Git.Add                                            <A-C-A>
"Git.Branches                                       <C-S-À>
"Git.BranchOperationGroup
"Git.BrowseRepoAtRevision
"Git.CheckoutGroup
"Git.CherryPick.Abort
"Git.Clone
"Git.Commit.And.Push.Executor                       <A-C-K>
"Git.CompareWithBranch
"Git.Configure.Remotes
"Git.ContextMenu
"Git.CreateNewBranch
"Git.CreateNewTag
"Git.Fetch
"Git.FileHistory.ContextMenu
"Git.Fixup.To.Commit
"Git.Ignore.File
"Git.Init
"Git.Interactive.Rebase
"Git.Log
"Git.Log.ContextMenu
"Git.Log.ContextMenu.CheckoutBrowse
"Git.Log.CreateNew
"Git.Log.DeepCompare
"Git.Log.Toolbar
"Git.LogContextMenu
"Git.Menu
"Git.Merge
"Git.Merge.Abort
"Git.Ongoing.Rebase.Actions
"Git.Pull
"Git.Rebase
"Git.Rebase.Abort
"Git.Rebase.Continue
"Git.Rebase.Skip
"Git.RepositoryContextMenu
"Git.Reset
"Git.Reset.In.Log
"Git.ResolveConflicts
"Git.Revert.In.Log
"Git.Reword.Commit                                  <F2> <S-F6>
"Git.SelectInGitLog
"Git.Squash.Into.Commit
"Git.Stash
"Git.Tag
"Git.Uncommit
"Git.Unstash
"GitFileActions
"Github.Create.Gist
"Github.Create.Pull.Request
"Github.Open.In.Browser
"Github.PullRequest.Branch.Create
"Github.PullRequest.List.Refresh
"Github.PullRequest.ToolWindow.List.Popup
"Github.PullRequest.Zip.Commits.Toggle
"Github.Rebase
"Github.Share
"Github.View.Pull.Request
"GitRepositoryActions
"GotoAction                                         <C-S-A>
"GotoBookmark0                                      <C-0>
"GotoBookmark1                                      <C-1>
"GotoBookmark2                                      <C-2>
"GotoBookmark3                                      <C-3>
"GotoBookmark4                                      <C-4>
"GotoBookmark5                                      <C-5>
"GotoBookmark6                                      <C-6>
"GotoBookmark7                                      <C-7>
"GotoBookmark8                                      <C-8>
"GotoBookmark9                                      <C-9>
"GotoChangedFile                                    <C-N>
"GoToChangeMarkerGroup
"GotoClass                                          <C-N>
"GoToCodeGroup
"GotoCustomRegion                                   <A-C-.>
"GotoDeclaration                                    <C-B> button=1 clickCount=1 modifiers=128 button=2 clickCount=1 modifiers=0
"GotoDeclarationOnly
"GoToEditPointGroup
"GoToErrorGroup
"GotoFile                                           <C-S-N>
"GotoImplementation                                 <A-C-B> button=1 clickCount=1 modifiers=640
"GoToLastTab
"GotoLine                                           <C-G>
"GoToLinkTarget
"GoToMenu
"GoToMenuEx
"GotoNextBookmark
"GotoNextElementUnderCaretUsage
"GotoNextError                                      <F2>
"GotoPrevElementUnderCaretUsage
"GotoPreviousBookmark
"GotoPreviousError                                  <S-F2>
"GotoRelated                                        <A-C-Home>
"GotoRow                                            <C-G>
"GotoSuperMethod                                    <C-U>
"GotoSymbol                                         <A-C-S-N>
"GoToTab1
"GoToTab2
"GoToTab3
"GoToTab4
"GoToTab5
"GoToTab6
"GoToTab7
"GoToTab8
"GoToTab9
"GoToTargetEx
"GotoTest                                           <C-S-T>
"GotoTypeDeclaration                                <C-S-B> button=1 clickCount=1 modifiers=192
"Graph.ActualSize                                   <C-o> <C-/>
"Graph.ApplyCurrentLayout                           <F5>
"Graph.CommonLayoutGroup
"Graph.Current.Node.Dependencies.Filter
"Graph.DefaultGraphPopup
"Graph.DefaultGraphToolbar
"Graph.Delete                                       <Del>
"Graph.ExportToFile
"Graph.FitContent
"Graph.Layout.BalloonLayouter
"Graph.Layout.CircularLayouter
"Graph.Layout.DirectedOrthogonalLayouter
"Graph.Layout.Fit.Content
"Graph.Layout.HierarchicGroupLayouter
"Graph.Layout.OrganicLayouter
"Graph.Layout.OrthogonalLayouter
"Graph.Layout.TreeLayouter
"Graph.Show.Edge.Labels
"Graph.ShowHideGrid
"Graph.SnapToGrid
"Graph.ZoomIn                                       <k> <=>
"Graph.ZoomOut                                      <m> <->
"Help.JetBrainsTV
"Help.KeymapReference
"HelpMenu
"HelpTopics
"Hg.Commit.And.Push.Executor                        <A-C-K>
"Hg.Ignore.File
"Hg.Init
"Hg.Log.ContextMenu
"Hg.Mq
"Hg.MQ.Unapplied
"hg4idea.branches
"hg4idea.CompareWithBranch
"hg4idea.CreateNewBranch
"hg4idea.CreateNewTag
"hg4idea.file.menu
"hg4idea.Graft.Continue
"hg4idea.merge.files
"hg4idea.MergeWithRevision
"hg4idea.mq.ShowUnAppliedPatches
"hg4idea.pull
"hg4idea.QDelete                                    <Del>
"hg4idea.QFinish
"hg4idea.QFold                                      <A-S-D>
"hg4idea.QGoto
"hg4idea.QGotoFromPatches                           <A-S-G>
"hg4idea.QImport
"hg4idea.QPushAction                                <A-S-P>
"hg4idea.QRefresh                                   <C-F5>
"hg4idea.QRename
"hg4idea.Rebase.Abort
"hg4idea.Rebase.Continue
"hg4idea.resolve.mark
"hg4idea.run.conflict.resolver
"hg4idea.tag
"hg4idea.updateTo
"hg4idea.UpdateToRevision
"HideActiveWindow                                   <S-Esc>
"HideAllWindows                                     <C-S-F12>
"HideCoverage
"HideSideWindows
"HierarchyGroup
"HighlightUsagesInFile                              <C-S-F7>
"HippieBackwardCompletion                           <A-S-/>
"HippieCompletion                                   <A-/>
"HtmlAddTableColumnAfter
"HtmlAddTableColumnBefore
"HtmlTableCellNavigateDown
"HtmlTableCellNavigateLeft
"HtmlTableCellNavigateRight
"HtmlTableCellNavigateUp
"HTTP.Request.NewFile
"HTTPClient.OpenCollection
"HTTPClient.OpenCollectionEditorContext
"HTTPClientGroup
"IdeScriptingConsole
"IgnoreChoicesGroup
"IgnorePharAction
"Images.ConvertSvgToPng
"Images.EditExternally                              <A-C-F4>
"Images.Editor.ActualSize                           <C-o> <C-/>
"Images.Editor.FitZoomToWindow
"Images.Editor.ToggleGrid                           <C-Þ>
"Images.Editor.ZoomIn                               <C-k> <C-=>
"Images.Editor.ZoomOut                              <C-m> <C-->
"Images.EditorPopupMenu
"Images.EditorToolbar
"Images.SetBackgroundImage
"Images.ShowThumbnails                              <C-S-T>
"Images.Thumbnails.EnterAction                      <CR>
"Images.Thumbnails.Hide                             <C-F4>
"Images.Thumbnails.ToggleFileName
"Images.Thumbnails.ToggleFileSize
"Images.Thumbnails.ToggleRecursive                  <A-j>
"Images.Thumbnails.ToggleTagsPanelName
"Images.Thumbnails.UpFolder                         <BS>
"Images.ThumbnailsPopupMenu
"Images.ThumbnailsToolbar
"Images.ToggleTransparencyChessboard
"ImplementMethods                                   <C-I>
"ImportSettings
"ImportTests
"ImportTestsFromFile
"IncomingChanges.Refresh
"IncomingChangesToolbar
"IncreaseColumnWidth                                <C-S-Right>
"IncrementalSearch
"IncrementWindowHeight                              <C-S-Down>
"IncrementWindowWidth                               <C-S-Right>
"Inline                                             <A-C-N>
"InsertLiveTemplate                                 <C-J>
"InspectCode
"InspectCodeActionInPopupMenus
"InspectCodeGroup
"InspectCodeInCodeMenuGroup
"InspectionToolWindow.TreePopup
"InstallNodeLocalDependencies
"IntegrateChangeSetAction
"IntegrateFiles
"IntroduceActionsGroup
"IntroduceConstant                                  <A-C-C>
"IntroduceField                                     <A-C-F>
"IntroduceParameter                                 <A-C-P>
"IntroduceParameterObject
"IntroduceVariable                                  <A-C-V>
"InvalidateCaches
"InvertBoolean
"JasmineGenerateAfterEachMethodAction
"JasmineGenerateBeforeEachMethodAction
"JasmineGenerateNewSpecAction
"JasmineGenerateNewSuiteAction
"JavaScript.Debugger.DropFrame
"JavaScript.Debugger.ReloadInBrowser
"JavaScript.Debugger.ToggleExceptionBreakpoint
"Javascript.Linters.EsLint.Fix
"Javascript.Linters.JSCS.Fix
"Javascript.Linters.StandardJS.Fix
"JavaScriptDebugger.HideActionsGroup
"JavaScriptDebugger.OpenUrl
"JavaScriptIntroduceDestructuringVariables
"Jdbc.OpenConsole.Any                               <C-S-F10>
"Jdbc.OpenConsole.New
"Jdbc.OpenConsole.New.Generate
"Jdbc.OpenEditor                                    <F4>
"Jdbc.OpenEditor.Data
"Jdbc.OpenEditor.DDL                                <C-B> button=1 clickCount=1 modifiers=128 button=2 clickCount=1 modifiers=0
"Jdbc.OpenEditor.Grid.DDL                           <A-C-Home>
"Jdbc.RunSqlScript                                  <C-S-F10>
"JS.TypeScript.Compile
"JS.TypeScript.Compile.Config
"JS.TypeScript.Include.Generated.Declarations
"JsTestFrameworkCodeGeneratorGroup
"JumpToColorsAndFonts
"JumpToLastChange                                   <C-S-BS>
"JumpToLastWindow                                   <F12>
"JumpToNextChange
"LangCodeInsightActions
"LanguageSpecificFoldingGroup
"List-scrollDown                                    <Pagedown>
"List-scrollDownExtendSelection                     <S-Pagedown>
"List-scrollUp                                      <Pageup>
"List-scrollUpExtendSelection                       <S-Pageup>
"List-selectFirstRow                                <C-Home>
"List-selectFirstRowExtendSelection                 <C-S-Home>
"List-selectLastRow                                 <C-End>
"List-selectLastRowExtendSelection                  <C-S-End>
"List-selectNextColumn                              <Right>
"List-selectNextColumnExtendSelection               <S-Right>
"List-selectNextRow                                 <Down>
"List-selectNextRowExtendSelection                  <S-Down>
"List-selectPreviousColumn                          <Left>
"List-selectPreviousColumnExtendSelection           <S-Left>
"List-selectPreviousRow                             <Up>
"List-selectPreviousRowExtendSelection              <S-Up>
"ListActions
"Load.V8.Heap.Snapshot
"LocalHistory
"LocalHistory.PutLabel
"LocalHistory.ShowHistory
"LocalHistory.ShowSelectionHistory
"Log.FileHistory.KeymapGroup
"Log.GoToNextEntry
"Log.GoToNextError                                  <S-F7>
"Log.GoToPrevEntry
"Log.JumpToSource                                   <F7>
"Log.KeymapGroup
"LogDebugConfigure
"LookupActions
"Macros
"MacrosGroup
"MainMenu
"MaintenanceAction                                  <A-C-S-/>
"MaintenanceGroup
"MainToolBar
"MainToolBarSettings
"ManageProjectTemplates
"ManageRecentProjects
"MarkAsContentRoot
"MarkAsOriginalTypeAction
"MarkAsPlainTextAction
"Markdown.Toolbar.Left
"Markdown.Toolbar.Right
"MarkExcludeRoot
"MarkFileAs
"MarkNotificationsAsRead
"MarkResourceRoot
"MarkRootGroup
"MarkSourceRoot
"MarkTestSourceRoot
"MaximizeActiveDialog
"MaximizeToolWindow                                 <C-S-Þ>
"MemberPushDown
"MembersPullUp
"MemoryView.SettingsPopupActionGroup
"MemoryView.ShowOnlyWithDiff
"MemoryView.SwitchUpdateMode
"MergeSettings
"MessDetectorAddToIgnored
"MethodDown                                         <A-Down>
"MethodHierarchy                                    <C-S-H>
"MethodHierarchy.BaseOnThisMethod                   <C-S-H>
"MethodHierarchyPopupMenu
"MethodUp                                           <A-Up>
"MinimizeCurrentWindow
"ModifyObject                                       <C-F6>
"Move                                               <F6>
"MoveAttributeInAction
"MoveAttributeOutAction
"MoveEditorToOppositeTabGroup
"MoveElementLeft                                    <A-C-S-Left>
"MoveElementRight                                   <A-C-S-Right>
"MoveLineDown                                       <A-S-Down>
"MoveLineUp                                         <A-S-Up>
"MoveStatementDown                                  <C-S-Down>
"MoveStatementUp                                    <C-S-Up>
"MoveTabDown
"MoveTabRight
"Mq.Patches.ContextMenu
"Mq.Patches.Toolbar
"NavBar-cancel                                      <Esc>
"NavBar-navigate                                    <F4>
"NavBar-return                                      <CR>
"NavBar-selectDown                                  <Down>
"NavBar-selectEnd                                   <End>
"NavBar-selectHome                                  <Home>
"NavBar-selectLeft                                  <Left>
"NavBar-selectRight                                 <Right>
"NavBar-selectUp                                    <Up>
"NavBarActions
"NavbarPopupMenu
"NavBarToolBar
"NavBarToolBarOthers
"NavBarVcsGroup
"NewCoffeeScriptFile
"NewDir
"NewDirectoryProject
"NewEditorConfigFile
"NewElement                                         <A-Ins>
"NewElementSamePlace                                <A-C-Ins>
"NewFile
"NewFromTemplate
"NewGroup
"NewHtmlFile
"NewJavaScriptFile
"NewPackageJsonFile
"NewProjectOrModuleGroup
"NewScratchBuffer
"NewScratchFile                                     <A-C-S-Ins>
"NewStylesheetFile
"NewTypeScriptConfigFile
"NewTypeScriptFile
"NewXml
"NewXmlDescriptor
"NextDiff                                           <F7>
"NextEditorTab                                      <A-S-Right>
"NextOccurence                                      <A-C-Down>
"NextParameter                                      <Tab>
"NextProjectWindow                                  <A-C-]>
"NextSplitter
"NextTab                                            <A-Right>
"NextTemplateParameter                              <Tab>
"NextTemplateVariable                               <Tab> <CR>
"NextWindow
"Notifications
"OnlineDocAction
"openAssertEqualsDiff                               <C-D>
"OpenBlankEditorInBlankDiffWindow
"OpenEditorInOppositeTabGroup
"OpenElementInNewWindow                             <S-CR>
"OpenFile
"OpenFileEditorInBlankDiffWindow
"OpenInBrowser
"OpenInBrowserEditorContextBarGroupAction
"OpenInBrowserGroup
"OpenProjectWindows
"OptimizeImports                                    <A-C-O>
"org.intellij.plugins.markdown.ui.actions.editorLayout.CyclicSplitLayoutChangeAction <C-P>
"org.intellij.plugins.markdown.ui.actions.editorLayout.EditorAndPreviewLayoutChangeAction
"org.intellij.plugins.markdown.ui.actions.editorLayout.EditorOnlyLayoutChangeAction
"org.intellij.plugins.markdown.ui.actions.editorLayout.PreviewOnlyLayoutChangeAction
"org.intellij.plugins.markdown.ui.actions.scrolling.AutoScrollAction
"org.intellij.plugins.markdown.ui.actions.styling.HeaderDownAction
"org.intellij.plugins.markdown.ui.actions.styling.HeaderUpAction
"org.intellij.plugins.markdown.ui.actions.styling.MarkdownIntroduceLinkReferenceAction
"org.intellij.plugins.markdown.ui.actions.styling.ToggleBoldAction
"org.intellij.plugins.markdown.ui.actions.styling.ToggleCodeSpanAction
"org.intellij.plugins.markdown.ui.actions.styling.ToggleItalicAction
"org.intellij.plugins.markdown.ui.actions.styling.ToggleStrikethroughAction
"Other.KeymapGroup
"OtherMenu
"OverrideMethods                                    <C-O>
"PairFileActions
"ParameterInfo                                      <C-P>
"ParameterNameHints
"PasteMultiple                                      <C-S-V> <C-S-Ins>
"Pause
"PauseOutput
"Perforce.Force.Refresh
"Perforce.Shelve
"Perforce.SyncToRevision
"PerforceDirect.Edit                                <A-C-E>
"PerforceDirect.Menu
"PerforceEnableIntegration
"Performance.ActivityMonitor
"performancePlugin.ExecuteScriptAction
"performancePlugin.ProfileIndexingAction
"performancePlugin.ProfileSlowStartupAction
"performancePlugin.ShowMemoryDialogAction
"performancePlugin.StartAsyncProfilerAction
"PhpCSAddToIgnored
"PhpCSFixerAddToIgnored
"PhpDebugBreakAtFirstLine
"PhpDebuggerCopyAsGroup
"PhpDebuggerCopyType
"PhpDebugHideEmptySuperGlobals
"PhpDetectPsroRoots
"PhpGenerateConstructor
"PhpGenerateGetters
"PhpGenerateGettersAndSetters
"PhpGenerateGroup
"PhpGeneratePhpDocBlocks
"PhpGenerateSetters
"PhpListenDebugAction
"PhpMakeStaticAction
"PhpNewClass
"PhpNewFile
"PhpNewGroup
"PhpNewTest
"PhpNewTestGroup
"PHPQualityToolsAddToIgnoredList
"PhpRunMenu
"PhpSpecNewSpecFromClass
"PhpStormCoverage
"PhpUnitGenerateGroup
"PhpUnitGenerateSetUpMethod
"PhpUnitGenerateTearDownMethod
"PhpUnitGenerateTestMethod
"PhpUnitNewTestFromClass
"PhpValidateWebServer
"PinActiveEditorTab
"PinActiveTab
"PinToolwindowTab
"PlatformOpenProjectGroup
"PlaybackLastMacro
"PlaySavedMacrosAction
"PopupHector                                        <A-C-S-H>
"PopupMenu-cancel                                   <Esc>
"PopupMenu-return                                   <CR>
"PopupMenu-selectChild                              <Right>
"PopupMenu-selectNext                               <Down>
"PopupMenu-selectParent                             <Left>
"PopupMenu-selectPrevious                           <Up>
"PopupMenuActions
"PowerSaveGroup
"PreviousDiff                                       <S-F7>
"PreviousEditorTab                                  <A-S-Left>
"PreviousOccurence                                  <A-C-Up>
"PreviousProjectWindow                              <A-C-[>
"PreviousTab                                        <A-Left>
"PreviousTemplateVariable                           <S-Tab>
"PreviousWindow
"PrevParameter                                      <S-Tab>
"PrevSplitter
"PrevTemplateParameter                              <S-Tab>
"Print
"PrintExportGroup
"ProductivityGuide
"ProfilerJumpToSource                               <F4>
"ProfilerPopupActions
"ProjectViewChangeView                              <A-F1>
"ProjectViewEditSource                              <F4>
"ProjectViewPopupMenu
"ProjectViewPopupMenuModifyGroup
"ProjectViewPopupMenuRefactoringGroup
"ProjectViewPopupMenuRunGroup
"ProjectViewPopupMenuSettingsGroup
"PsiViewer
"PsiViewerForContext
"PublishGroup
"PublishGroup.Base
"PublishGroup.CompareLocalVsRemote
"PublishGroup.CompareLocalVsRemoteWith
"PublishGroup.Download
"PublishGroup.DownloadFrom
"PublishGroup.SyncLocalVsRemote
"PublishGroup.SyncLocalVsRemoteWith
"PublishGroup.Upload
"PublishGroup.UploadTo                              <A-C-S-X>
"PublishGroupPopupMenu
"QuickActionPopup                                   <A-C-CR>
"QuickActions
"QuickChangeScheme                                  <C-À>
"QuickDocCopy                                       <C-C> <C-Ins>
"QuickEvaluateExpression                            <A-C-F8> button=1 clickCount=1 modifiers=576
"QuickFixes
"QuickImplementations                               <C-S-I>
"QuickJavaDoc                                       <C-Q> button=2 clickCount=1 modifiers=512
"QuickList.Deployment
"QUnitGenerateNewTestAction
"QUnitGenerateSetupAction
"QUnitGenerateTearDownAction
"Rainbow.ScopeHighlightingAction                    button=3 clickCount=1 modifiers=128
"Rainbow.ScopeOutsideHighlightingRestrainAction     button=3 clickCount=1 modifiers=512
"ReactClassToFunctionalComponentAction
"ReactExtractComponentAction
"ReactFunctionalToClassComponentAction
"Read.V8.Log.In.House
"RearrangeCode
"RecentChangedFiles
"RecentChanges                                      <A-S-C>
"RecentFiles                                        <C-E>
"RecentLocations                                    <C-S-E>
"RecentProjectListGroup
"RefactoringMenu
"Refactorings.QuickListPopupAction                  <A-C-S-T>
"ReformatCode                                       <A-C-L>
noremap == :action ReformatCode<CR>
"Refresh                                            <C-F5>
"Register
"RegistrationActions
"ReloadFromDisk
"RemoteExternalToolsGroup
"RemoteHost.NewGroup
"RemoteHost.NewRemoteItem                           <A-Ins>
"RemoteHostView.CopyPaths                           <C-S-C>
"RemoteHostView.CreateFile
"RemoteHostView.CreateFolder
"RemoteHostView.EditRemoteFile
"RemoteHostView.EditSource                          <F4>
"RemoteHostView.Rename                              <S-F6>
"RemoteHostView.SetPermissions
"RemoteHostView.ToggleExclusion
"RemoteHostViewPopupMenu
"RemoteServers.ChooseServerDeployment
"RemoteServers.ChooseServerDeploymentWithDebug
"RemoteServers.ConnectServer
"RemoteServers.DisconnectServer
"RemoteServers.EditDeploymentConfig
"RemoteServers.EditServerConfig
"RemoteServersViewPopup
"RemoteServersViewToolbar
"RemoteServersViewToolbar.Top
"RemoveBom
"RemoveBom.Group
"RenameAttributeAction
"RenameElement                                      <S-F6>
"RenameFile
"RenameProject
"RenameTagAction
"ReopenClosedTab
"Replace                                            <C-R>
"ReplaceAttributeWithTagAction
"ReplaceInPath                                      <C-S-R>
"ReplaceTagWithAttributeAction
"ReportProblem
"RepositoryChangesBrowserToolbar
"Rerun                                              <C-F5>
"RerunFailedTests
"RerunTests                                         <A-S-R>
"ResetColumnsWidth                                  <C-S-Up>
"ResetToMySettings
"ResetToTheirsSettings
"ResizeToolWindowDown                               <C-S-Down>
"ResizeToolWindowGroup
"ResizeToolWindowLeft                               <C-S-Left>
"ResizeToolWindowRight                              <C-S-Right>
"ResizeToolWindowUp                                 <C-S-Up>
"Resolve
"ResolveAll
"RESTClient.RunRequest
"RESTClient.ShowHistory
"RESTClient.ShowHistoryEditorContext
"RestoreDefaultExtensionScripts
"RestoreDefaultLayout                               <S-F12>
"Resume                                             <F9>
"RevealGroup
"RevealIn
"RevertUnchanged
"RevisionGraph
"Run                                                <S-F10>
"RunAnything
"RunClass                                           <C-S-F10>
"RunConfiguration
"RunConfigurationTemplatesForNewProjects
"RunContextGroup
"RunContextGroupInner
"RunContextPopupGroup
"RunCoverage
"RunDashboard.ClearContent
"RunDashboard.CopyConfiguration                     <C-D>
"RunDashboard.Debug
"RunDashboard.EditConfiguration                     <S-F4>
"RunDashboard.GroupBy
"RunDashboard.GroupByStatus
"RunDashboard.GroupByType
"RunDashboard.GroupConfigurations
"RunDashboard.RemoveConfiguration                   <Del>
"RunDashboard.RestoreConfiguration
"RunDashboard.Run                                   <C-S-F10>
"RunDashboard.ShowConfigurations                    <C-S-T>
"RunDashboard.Stop                                  <C-F2>
"RunDashboard.UngroupConfigurations                 <Del>
"RunDashboardContentToolbar
"RunDashboardPopup
"RunDashboardTreeToolbar
"RunInspection                                      <A-C-S-I>
"RunInspectionOn
"RunJsbtTask                                        <A-F11>
"RunMenu
"Runner.CloseAllUnpinnedViews
"Runner.CloseAllViews
"Runner.CloseOtherViews
"Runner.CloseView
"Runner.Focus
"Runner.FocusOnStartup
"Runner.Layout
"Runner.RestoreLayout
"Runner.View.Close.Group
"Runner.View.Popup
"Runner.View.Toolbar
"RunnerActions
"RunnerActionsTouchbar
"RunnerLayoutActions
"RunPhingBuild
"runShellFileAction                                 <C-S-F10>
"RunToCursor                                        <A-F9>
"SafeDelete                                         <A-Del>
"SaveAll                                            <C-S>
"SaveAs                                             <C-S-S>
"SaveAsTemplate
"SaveDocument
"SaveFileAsTemplate
"SaveProjectAsTemplateAction
"ScopeView.EditScopes
"ScopeViewPopupMenu
"Scratch.ChangeLanguage
"ScrollPane-scrollDown
"ScrollPane-scrollEnd
"ScrollPane-scrollHome
"ScrollPane-scrollLeft
"ScrollPane-scrollRight
"ScrollPane-scrollUp
"ScrollPane-unitScrollDown
"ScrollPane-unitScrollLeft
"ScrollPane-unitScrollRight
"ScrollPane-unitScrollUp
"ScrollPaneActions
"ScrollTreeToCenter                                 <C-M>
"SearchEverywhere
"SearchEverywhere.CompleteCommand                   <Tab>
"SearchEverywhere.NavigateToNextGroup               <Pagedown> <C-Down>
"SearchEverywhere.NavigateToPrevGroup               <Pageup> <C-Up>
"SearchEverywhere.NextTab                           <Tab>
"SearchEverywhere.PrevTab                           <S-Tab>
"SearchEverywhere.SelectItem                        <CR>
"SearchEverywhereActions
"SelectAllOccurrences                               <A-C-S-J>
"SelectIn                                           <A-F1>
"SelectInProjectView
"SelectInRemoteHost
"SelectNextOccurrence                               <A-J>
"SendEOF                                            <C-D>
"SendFeedback
"SendToFavoritesGroup
"Servers.Deploy
"Servers.DeployWithDebug
"Servers.Undeploy
"ServiceView.GroupBy
"ServiceView.GroupByContributor
"ServiceView.GroupByServiceGroups                   <A-C-P>
"ServiceView.JumpToServices                         <A-Home>
"ServiceView.ShowInNewTab
"ServiceView.ShowServices                           <C-S-T>
"ServiceView.SplitByType
"ServiceView.SplitToNewTabs
"ServiceViewItemPopup
"ServiceViewItemPopupGroup
"ServiceViewItemToolbar
"ServiceViewItemToolbarGroup
"ServiceViewTreeToolbar
"Session.Client.Detach
"Session.Close
"Session.CloseAll
"Session.Rename                                     <S-F6>
"SetJobsForChangeList
"SetShortcutAction                                  <A-CR>
"SeverityEditorDialog
"ShelfChanges.Settings
"Shelve.KeymapGroup
"ShelveChanges.UnshelveWithDialog                   <C-S-U>
"ShelvedChanges.CleanMarkedToDelete
"ShelvedChanges.ImportPatches
"ShelvedChanges.Rename                              <F2> <S-F6>
"ShelvedChanges.Restore
"ShelvedChanges.ShowHideDeleted
"ShelvedChanges.ShowRecentlyDeleted
"ShelvedChangesPopupMenu
"ShelvedChangesToolbar
"ShGenerateForLoop
"ShGenerateGroup
"ShGenerateUntilLoop
"ShGenerateWhileLoop
"Show.Current.Revision
"ShowAnnotateOperationsPopupGroup
"ShowAppliedStylesAction
"ShowBlankDiffWindow
"ShowBookmarks                                      <S-F11>
"ShowColorPicker
"ShowContent                                        <A-Down>
"ShowErrorDescription                               <C-F1>
"ShowExecutionPoint                                 <A-F10>
"ShowExperiments
"ShowFilePath                                       <A-C-F12>
"ShowFilterPopup                                    <A-C-F>
"ShowGruntTasks
"ShowGulpTasks
"ShowGutterIconsSettings
"ShowIntentionActions                               <A-CR>
"ShowIntentionsGroup
"ShowLiveRunConfigurations
"ShowLog
"ShowNavBar                                         <A-Home>
"ShowNpmScripts
"ShowParameterHintsSettings
"ShowPopupMenu                                      <ȍ>
"ShowProcessWindow
"ShowRecentFindUsagesGroup
"ShowReformatFileDialog                             <A-C-S-L>
"ShowRegistry
"ShowSearchHistory                                  <A-Down>
"ShowSettings                                       <A-C-S>
"ShowSettingsAndFindUsages                          <A-C-S-F7>
"ShowSettingsWithAddedPattern
"ShowSQLLog
"ShowTips
"ShowUmlDiagram                                     <A-C-S-U>
"ShowUmlDiagramPopup                                <A-C-U>
"ShowUsages                                         <A-C-F7>
"SilentCodeCleanup
"SliceBackward
"SliceForward
"SmartSelect                                        <C-W>
"SmartStepInto                                      <S-F7>
"SmartTypeCompletion                                <C-S- >
"SmartUnSelect                                      <C-S-W>
"SplitHorizontally
"SplitVertically
"sql.ChangeDialect
"sql.ChangeDialect.toolbar
"Sql.EditParameter                                  <F4>
"sql.ExtractFunctionAction                          <A-C-M>
"sql.ExtractNamedQueryAction
"sql.IntroduceAliasAction
"sql.SelectCurrentStatement
"sql.SelectInDatabaseView
"SqlGenerateGroup
"StandardMacroActions
"Start.Use.Vcs
"StartStopMacroRecording
"StepInto                                           <F7>
"StepOut                                            <S-F8>
"StepOver                                           <F8>
"Stop                                               <C-F2>
"StopBackgroundProcesses                            <C-S-F2>
"StoreDefaultLayout
"StructuralSearchActions
"StructuralSearchPlugin.StructuralReplaceAction
"StructuralSearchPlugin.StructuralSearchAction
"StructureViewPopupMenu
"Subversion.BrowseSVNRepository
"Subversion.CleanupProject
"Subversion.Clenaup
"Subversion.CompareWithBranch
"Subversion.Copy
"Subversion.Create.External
"Subversion.ImportToSVNRepository
"Subversion.Lock
"Subversion.MarkResolved
"Subversion.MarkTreeResolved
"Subversion.Relocate
"Subversion.Resolve
"Subversion.SetProperty
"Subversion.Share
"Subversion.ShareWholeProject
"Subversion.ShowProperties
"Subversion.TogglePropertiesDiff
"Subversion.Unlock
"SubversionFilePopupGroup
"SubversionGroup
"SubversionUpdateActionGroup
"SuppressFixes
"SurroundWith                                       <A-C-T>
"SurroundWithEmmet
"SurroundWithLiveTemplate                           <A-C-J>
"Svn.Show.Working.Copies
"SwapSidesInDiffWindow
"SwitchBootJdk
"SwitchCoverage                                     <A-C-F6>
"Switcher                                           <C-Tab> <C-S-Tab>
"SwitcherRecentEditedChangedToggleCheckBox          <C-E>
"Synchronize                                        <A-C-Y>
"SynchronizeCurrentFile
"SyncSettings
"Table-scrollDownChangeSelection                    <Pagedown>
"Table-scrollDownExtendSelection                    <S-Pagedown>
"Table-scrollUpChangeSelection                      <Pageup>
"Table-scrollUpExtendSelection                      <S-Pageup>
"Table-selectFirstRow                               <C-Home>
"Table-selectFirstRowExtendSelection                <C-S-Home>
"Table-selectLastRow                                <C-End>
"Table-selectLastRowExtendSelection                 <C-S-End>
"Table-selectNextColumn                             <Right>
"Table-selectNextColumnExtendSelection              <S-Right>
"Table-selectNextRow                                <Down>
"Table-selectNextRowExtendSelection                 <S-Down>
"Table-selectPreviousColumn                         <Left>
"Table-selectPreviousColumnExtendSelection          <S-Left>
"Table-selectPreviousRow                            <Up>
"Table-selectPreviousRowExtendSelection             <S-Up>
"TableActions
"TableResult.GrowSelection                          <C-W>
"TableResult.SelectAllOccurrences                   <A-C-S-J>
"TableResult.SelectNextOccurrence                   <A-J>
"TableResult.UnselectPreviousOccurrence             <A-S-J>
"TabList
"TabsActions
"task.actions
"tasks.analyze.stacktrace
"tasks.and.contexts
"tasks.close                                        <A-S-W>
"tasks.configure.servers
"tasks.create.changelist
"tasks.edit
"tasks.goto                                         <A-S-N>
"tasks.group
"tasks.open.in.browser                              <A-S-B>
"tasks.show.task.description
"tasks.switch                                       <A-S-T>
"tasks.toolbar.group
"TechnicalSupport
"TemplateParametersNavigation
"TemplateProjectProperties
"Terminal.MoveToEditor
"Terminal.MoveToolWindowTabLeft                     <A-C-S-Left>
"Terminal.MoveToolWindowTabRight                    <A-C-S-Right>
"Terminal.OpenInTerminal
"Terminal.RenameSession
"Terminal.SwitchFocusToEditor                       <Esc>
"TestTreePopupMenu
"TextComponent.ClearAction
"TimeLapseView
"TodoMainGroup
"TodoViewGroupByFlattenPackage                      <A-C-C>
"TodoViewGroupByGroup
"TodoViewGroupByShowModules                         <A-C-M>
"TodoViewGroupByShowPackages                        <A-C-P>
"ToggleBookmark                                     <F11>
"ToggleBookmark0                                    <C-S-0>
"ToggleBookmark1                                    <C-S-1>
"ToggleBookmark2                                    <C-S-2>
"ToggleBookmark3                                    <C-S-3>
"ToggleBookmark4                                    <C-S-4>
"ToggleBookmark5                                    <C-S-5>
"ToggleBookmark6                                    <C-S-6>
"ToggleBookmark7                                    <C-S-7>
"ToggleBookmark8                                    <C-S-8>
"ToggleBookmark9                                    <C-S-9>
"ToggleBookmarkWithMnemonic                         <C-F11>
"ToggleBreakpointEnabled
"ToggleCompletionHintsAction
"ToggleContentUiTypeMode
"ToggleDistractionFreeMode
"ToggleDockMode
"ToggleFloatingMode
"ToggleFullScreen
"ToggleFullScreenGroup
"ToggleInlineHintsAction
"ToggleLineBreakpoint                               <C-F8>
"TogglePinnedMode
"TogglePopupHints
"TogglePowerSave
"TogglePresentationMode
"ToggleReadOnlyAttribute
"ToggleSideMode
"ToggleTemporaryLineBreakpoint                      <A-C-S-F8>
"ToggleWindowedMode
"ToolbarFindGroup
"ToolbarRunGroup
"ToolsBasicGroup
"ToolsMenu
"ToolsXmlGroup
"ToolWindowContextMenu
"ToolWindowsGroup
"TouchBar
"TouchBarDebug
"TouchBarDebug.ForceStepButtons
"TouchBarDebug.StepButtons
"TouchBarDebug_alt
"TouchBarDefault
"TouchBarDefault_alt
"TouchBarDefault_cmd
"TouchBarDefault_cmd.alt
"TouchBarDefault_ctrl
"TouchBarDefault_shift
"TouchBarDefaultOptionalGroup
"Tree-scrollDownChangeSelection                     <Pagedown>
"Tree-scrollDownExtendSelection                     <S-Pagedown>
"Tree-scrollUpChangeSelection                       <Pageup>
"Tree-scrollUpExtendSelection                       <S-Pageup>
"Tree-selectChild                                   <Right>
"Tree-selectChildExtendSelection                    <S-Right>
"Tree-selectFirst                                   <C-Home>
"Tree-selectFirstExtendSelection                    <C-S-Home>
"Tree-selectLast                                    <C-End>
"Tree-selectLastExtendSelection                     <C-S-End>
"Tree-selectNext                                    <Down>
"Tree-selectNextExtendSelection                     <S-Down>
"Tree-selectParent                                  <Left>
"Tree-selectParentExtendSelection                   <S-Left>
"Tree-selectPrevious                                <Up>
"Tree-selectPreviousExtendSelection                 <S-Up>
"TreeActions
"TreeNodeExclusion
"TsLintFileFixAction
"TslintImportCodeStyleAction
"TW.MoveToGroup
"TW.ViewModeGroup
"TWViewModes
"TWViewModesLegacy
"TypeHierarchy                                      <C-H>
"TypeHierarchy.Class
"TypeHierarchy.Subtypes
"TypeHierarchy.Supertypes
"TypeHierarchyBase.BaseOnThisType                   <C-H>
"TypeHierarchyPopupMenu
"TypeScript.Enable.Service
"TypeScript.Include.Sources
"TypeScript.Restart.Service
"TypeScriptExtractTypeAlias
"UiDebugger
"UIToggleActions
"Uml.CollapseNodes                                  <C>
"UML.DefaultGraphPopup
"UML.EditorGroup
"Uml.ExpandNodes                                    <E>
"UML.Find                                           <C-F> <A-F3>
"UML.Group
"UML.Group.Simple
"Uml.NewElement                                     <A-Ins>
"Uml.NewGroup
"Uml.NodeCellEditorPopup
"Uml.NodeIntentions                                 <A-CR>
"Uml.PsiElement.Actions
"Uml.Refactoring
"UML.SaveDiagram
"UML.ShowChanges                                    <A-C-S-D>
"Uml.ShowDiff                                       <C-S-D>
"UML.ShowStructure                                  <C-F12>
"UML.SourceActionsGroup
"UndockMode
"UnmarkResourceRoot
"UnmarkTestSourceRoot
"Unscramble
"UnselectPreviousOccurrence                         <A-S-J>
"Unsplit
"UnsplitAll
"Unversioned.Files.Dialog
"Unversioned.Files.Dialog.Popup
"Unwrap                                             <C-S-Del>
"UnwrapTagAction
"UpdateActionGroup
"UpdateCopyright
"UpdateFiles
"UpdateRunningApplication                           <C-F10>
"UsageView.Exclude                                  <Del>
"UsageView.Include                                  <Ins>
"UsageView.Popup
"UsageView.Remove                                   <C-X> <S-Del>
"UsageView.Rerun                                    <C-F5>
"UsageView.ShowRecentFindUsages                     <A-Down>
"v8.profiling
"VagrantGroup
"ValidateXml
"Vcs.ApplySelectedChanges
"Vcs.Browse
"Vcs.CheckinProjectMenu
"Vcs.CheckinProjectToolbar
"Vcs.Checkout
"Vcs.CherryPick
"Vcs.CommitExecutor.Actions
"Vcs.CopyRevisionNumberAction
"VCS.Deployment.SyncLocalVsRemote
"VCS.Deployment.Upload
"Vcs.Diff.ExcludeChangedLinesFromCommit
"Vcs.Diff.IncludeOnlyChangedLinesIntoCommit
"Vcs.EditSource                                     <F4>
"Vcs.FileHistory.ContextMenu
"Vcs.FileHistory.Toolbar
"Vcs.Force.Push
"Vcs.GetVersion
"Vcs.History
"Vcs.Import
"Vcs.IntegrateProject
"Vcs.KeymapGroup
"Vcs.Log.AnnotateRevisionAction
"Vcs.Log.ChangesBrowser.Popup
"Vcs.Log.ChangesBrowser.Toolbar
"Vcs.Log.CollapseAll
"Vcs.Log.CompactReferencesView
"Vcs.Log.CompareRevisions
"Vcs.Log.ContextMenu
"Vcs.Log.EnableFilterByRegexAction
"Vcs.Log.ExpandAll
"Vcs.Log.FocusTextFilter                            <C-L>
"Vcs.Log.GetVersion
"Vcs.Log.GoToChild                                  <Left>
"Vcs.Log.GoToParent                                 <Right>
"Vcs.Log.GoToRef                                    <C-F> <A-F3>
"Vcs.Log.HighlightersActionGroup
"Vcs.Log.IntelliSortChooser
"Vcs.Log.LayoutConfiguration
"Vcs.Log.MatchCaseAction
"Vcs.Log.OpenAnotherTab
"Vcs.Log.OpenRepositoryVersion
"Vcs.Log.PresentationSettings
"Vcs.Log.Refresh                                    <C-F5>
"Vcs.Log.ResumeIndexing
"Vcs.Log.ShowAllAffected                            <A-S-A>
"Vcs.Log.ShowChangesFromParents
"Vcs.Log.ShowDetailsAction
"Vcs.Log.ShowDiffPreview
"Vcs.Log.ShowDiffPreviewInEditor
"Vcs.Log.ShowLongEdges
"Vcs.Log.ShowOnlyAffectedChanges
"Vcs.Log.ShowOtherBranches
"Vcs.Log.ShowRootsColumnAction
"Vcs.Log.ShowTagNames
"Vcs.Log.ShowTooltip                                <C-Q> button=2 clickCount=1 modifiers=512
"Vcs.Log.TextFilterSettings
"Vcs.Log.ToggleColumns
"Vcs.Log.Toolbar
"Vcs.Log.Toolbar.Internal
"Vcs.Log.Toolbar.RightCorner
"Vcs.MessageActionGroup
"Vcs.MoveChangedLinesToChangelist                   <A-S-M>
"Vcs.OpenRepositoryVersion
"Vcs.Operations.Popup
"Vcs.Operations.Popup.Annotate
"Vcs.Operations.Popup.NonVcsAware
"Vcs.Operations.Popup.Vcs.Providers
"Vcs.Operations.Popup.VcsAware
"Vcs.Operations.Popup.VcsNameSeparator
"Vcs.Push                                           <C-S-K>
"Vcs.Push.Actions
"Vcs.QuickListPopupAction                           <A-À>
"Vcs.ReformatCommitMessage                          <A-C-L>
"Vcs.RefreshFileHistory                             <C-F5>
"Vcs.RefreshStatuses
"Vcs.RepositoryChangesBrowserMenu
"Vcs.RepositoryChangesBrowserToolbar
"Vcs.RevertSelectedChanges
"Vcs.RollbackChangedLines                           <A-C-Z>
"Vcs.Show.Local.Changes
"Vcs.Show.Log
"Vcs.Show.Shelf
"Vcs.Show.Toolwindow.Tab
"Vcs.ShowDiffWithLocal
"Vcs.ShowDiffWithLocal.Before
"Vcs.ShowHistoryForBlock
"Vcs.ShowHistoryForRevision
"Vcs.ShowMessageHistory                             <C-M> <C-E>
"Vcs.ShowTabbedFileHistory
"Vcs.Specific
"Vcs.ToggleAmendCommitMode                          <A-M>
"Vcs.UpdateProject                                  <C-T>
"VcsFileGroupPopup
"VcsGeneral.KeymapGroup
"VcsGlobalGroup
"VcsGroup
"VcsGroups
"VcsHistory.ShowAllAffected                         <A-S-A>
"VcsHistoryActionsGroup
"VcsHistoryActionsGroup.Toolbar
"VcsHistoryInternalGroup.Popup
"VcsHistoryInternalGroup.Toolbar
"VcsNavBarToobarActions
"VcsShowCurrentChangeMarker
"VcsShowNextChangeMarker                            <A-C-S-Down>
"VcsShowPrevChangeMarker                            <A-C-S-Up>
"VcsToobarActions
"VcsToolbarLabelAction
"VersionControlsGroup
"ViewAppearanceGroup
"ViewBreakpoints                                    <C-S-F8>
"ViewImportPopups
"ViewInplaceComments                                <A-S-\>
"ViewMainMenu
"ViewMenu
"ViewNavigationBar
"ViewOfflineInspection
"ViewRecentActions
"ViewSource                                         <C-CR>
"ViewStatusBar
"ViewToolBar
"ViewToolButtons
"VimActions
"VimPluginToggle
"VimShortcutKeyAction
"VisualizeSourceMap
"VueExtractComponentAction
"WD.UploadCurrentRemoteFileAction                   <A-S-Q>
"WebDeployment.BrowseServers
"WebDeployment.Configuration
"WebDeployment.Options
"WebDeployment.ToggleAutoUpload
"WebOpenInAction                                    <A-F2>
"WebServicesPlugin.CreateRESTClient
"WeighingNewGroup
"WelcomeScreen.ChangeProjectIcon
"WelcomeScreen.Configure
"WelcomeScreen.Configure.CollectZippedLogs
"WelcomeScreen.Configure.DesktopEntry
"WelcomeScreen.Configure.Export
"WelcomeScreen.Configure.Import
"WelcomeScreen.Configure.Properties
"WelcomeScreen.Configure.VMOptions
"WelcomeScreen.CopyProjectPath                      <C-S-C>
"WelcomeScreen.CreateDirectoryProject
"WelcomeScreen.CreateWebProject
"WelcomeScreen.Documentation
"WelcomeScreen.EditGroup
"WelcomeScreen.GetFromVcs
"WelcomeScreen.MoveToGroup
"WelcomeScreen.NewGroup
"WelcomeScreen.OpenDirectoryProject
"WelcomeScreen.OpenSelected
"WelcomeScreen.Platform.NewProject
"WelcomeScreen.Plugins
"WelcomeScreen.QuickStart
"WelcomeScreen.QuickStart.Platform
"WelcomeScreen.Register
"WelcomeScreen.RemoveSelected
"WelcomeScreen.Settings
"WelcomeScreen.Update
"WelcomeScreenRecentProjectActionGroup
"WelcomScreen.ManageLicense
"WindowMenu
"WindowMode
"working.context
"WrapTagAction
"WrapTagContentsAction
"XdebugAddMethodToSkipListAction
"XdebugAnalyzeProfilerSnapshotAction
"XDebugger.Actions
"XDebugger.AttachGroup
"XDebugger.AttachToProcess                          <A-C-F5>
"XDebugger.CompareValueWithClipboard
"XDebugger.CopyName
"XDebugger.CopyPath
"XDebugger.CopyValue                                <C-C> <C-Ins>
"XDebugger.CopyWatch                                <C-D>
"XDebugger.EditWatch                                <F2>
"XDebugger.Evaluate.Code.Fragment.Editor.Popup
"XDebugger.Evaluation.Dialog.Tree.Popup
"XDebugger.Frames.TopToolbar
"XDebugger.Frames.Tree.Popup
"XDebugger.Inline
"XDebugger.Inspect
"XDebugger.Inspect.Tree.Popup
"XDebugger.JumpToSource                             <F4>
"XDebugger.JumpToTypeSource                         <S-F4>
"XDebugger.MoveWatchDown                            <A-Down>
"XDebugger.MoveWatchUp                              <A-Up>
"XDebugger.MuteBreakpoints
"XDebugger.NewWatch                                 <Ins>
"XDebugger.RemoveAllWatches
"XDebugger.RemoveWatch                              <Del>
"XDebugger.Reveal
"XDebugger.Settings
"XDebugger.SetValue                                 <F2>
"XDebugger.SwitchWatchesInVariables
"XDebugger.ToggleSortValues
"XDebugger.ToolWindow.LeftToolbar
"XDebugger.ToolWindow.TopToolbar
"XDebugger.UnmuteOnStop
"XDebugger.ValueGroup
"XDebugger.ValueGroup.CopyJson
"XDebugger.Variables.Tree.Popup
"XDebugger.Variables.Tree.Toolbar
"XDebugger.Watches.Tree.Popup
"XDebugger.Watches.Tree.Toolbar
"XdebugShowValuesAddresses
"XmlGenerateToolsGroup
"XMLRefactoringMenu
"XPathView.Actions.Evaluate                         <A-C-X>
"XPathView.Actions.FindByExpression                 <A-C-X>
"XPathView.Actions.ShowPath                         <A-C-X>
"XPathView.EditorPopup
"XPathView.MainMenu.Search
"XPathView.XSLT.Associations
"XSD2Document
"ZoomCurrentWindow