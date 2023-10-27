#' 处理逻辑
#'
#' @param input 输入
#' @param output 输出
#' @param session 会话
#' @param dms_token 口令
#'
#' @return 返回值
#' @export
#'
#' @examples
#' updateMFServer()
updateMFServer <- function(input,output,session,dms_token) {
  var_text_updateMF_year=tsui::var_numeric("text_updateMF_year")
  var_text_updateMF_month=tsui::var_numeric("text_updateMF_month")
  
  shiny::observeEvent(input$btn_updateMF,{
    token=dms_token
    FYear=var_text_updateMF_year()
    FMonth=var_text_updateMF_month()
    
    
    mdljhhrvPkg::updateMF(token = token,FYear =FYear ,FMonth =FMonth )
    
    
    tsui::pop_notice("管理费已更新成功")
    
    
    
    
    
    
  })
}
