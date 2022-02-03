%class GenericValueMatrix, see Doxygen page for details
%at https://gtsam.org/doxygen/
%
%-------Methods-------
%
classdef GenericValueMatrix < gtsam.Value
  properties
    ptr_gtsamGenericValueMatrix = 0
  end
  methods
    function obj = GenericValueMatrix(varargin)
      if (nargin == 2 || (nargin == 3 && strcmp(varargin{3}, 'void'))) && isa(varargin{1}, 'uint64') && varargin{1} == uint64(5139824614673773682)
        if nargin == 2
          my_ptr = varargin{2};
        else
          my_ptr = gtsam_wrapper(154, varargin{2});
        end
        base_ptr = gtsam_wrapper(153, my_ptr);
      else
        error('Arguments do not match any overload of gtsam.GenericValueMatrix constructor');
      end
      obj = obj@gtsam.Value(uint64(5139824614673773682), base_ptr);
      obj.ptr_gtsamGenericValueMatrix = my_ptr;
    end

    function delete(obj)
      gtsam_wrapper(155, obj.ptr_gtsamGenericValueMatrix);
    end

    function display(obj), obj.print(''); end
    %DISPLAY Calls print on the object
    function disp(obj), obj.display; end
    %DISP Calls print on the object
  end

  methods(Static = true)
  end
end
