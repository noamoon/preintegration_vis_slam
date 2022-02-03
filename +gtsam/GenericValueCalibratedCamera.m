%class GenericValueCalibratedCamera, see Doxygen page for details
%at https://gtsam.org/doxygen/
%
%-------Methods-------
%
classdef GenericValueCalibratedCamera < gtsam.Value
  properties
    ptr_gtsamGenericValueCalibratedCamera = 0
  end
  methods
    function obj = GenericValueCalibratedCamera(varargin)
      if (nargin == 2 || (nargin == 3 && strcmp(varargin{3}, 'void'))) && isa(varargin{1}, 'uint64') && varargin{1} == uint64(5139824614673773682)
        if nargin == 2
          my_ptr = varargin{2};
        else
          my_ptr = gtsam_wrapper(196, varargin{2});
        end
        base_ptr = gtsam_wrapper(195, my_ptr);
      else
        error('Arguments do not match any overload of gtsam.GenericValueCalibratedCamera constructor');
      end
      obj = obj@gtsam.Value(uint64(5139824614673773682), base_ptr);
      obj.ptr_gtsamGenericValueCalibratedCamera = my_ptr;
    end

    function delete(obj)
      gtsam_wrapper(197, obj.ptr_gtsamGenericValueCalibratedCamera);
    end

    function display(obj), obj.print(''); end
    %DISPLAY Calls print on the object
    function disp(obj), obj.display; end
    %DISP Calls print on the object
  end

  methods(Static = true)
  end
end
