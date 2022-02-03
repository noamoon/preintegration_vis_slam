%class GenericValuePose2, see Doxygen page for details
%at https://gtsam.org/doxygen/
%
%-------Methods-------
%
classdef GenericValuePose2 < gtsam.Value
  properties
    ptr_gtsamGenericValuePose2 = 0
  end
  methods
    function obj = GenericValuePose2(varargin)
      if (nargin == 2 || (nargin == 3 && strcmp(varargin{3}, 'void'))) && isa(varargin{1}, 'uint64') && varargin{1} == uint64(5139824614673773682)
        if nargin == 2
          my_ptr = varargin{2};
        else
          my_ptr = gtsam_wrapper(169, varargin{2});
        end
        base_ptr = gtsam_wrapper(168, my_ptr);
      else
        error('Arguments do not match any overload of gtsam.GenericValuePose2 constructor');
      end
      obj = obj@gtsam.Value(uint64(5139824614673773682), base_ptr);
      obj.ptr_gtsamGenericValuePose2 = my_ptr;
    end

    function delete(obj)
      gtsam_wrapper(170, obj.ptr_gtsamGenericValuePose2);
    end

    function display(obj), obj.print(''); end
    %DISPLAY Calls print on the object
    function disp(obj), obj.display; end
    %DISP Calls print on the object
  end

  methods(Static = true)
  end
end
