module ApplicationHelper
    def sortable(column, title = nil)
        title ||= column.titleize
        direction = (column == session[:sort] && session[:direction] == "asc") ? "desc" : "asc"
        link_to title, { sort: column, direction: direction }
      end

      def sort_direction(column)
        if session[:sort] == column
          session[:direction] == "asc" ? "desc" : "asc"
        else
          "asc"
        end
      end
      def highlight_sort_column(column)
        if column == session[:sort]
          session[:direction] == 'asc' ? 'sorted-asc' : 'sorted-desc'
        else
          ''
        end
      end 
end
