%class PreconditionerParameters, see Doxygen page for details
%at https://gtsam.org/doxygen/
%
%-------Constructors-------
%PreconditionerParameters()
%
classdef PreconditionerParameters < handle
  properties
    ptr_gtsamPreconditionerParameters = 0
  end
  methods
    function obj = PreconditionerParameters(varargin)
      if (nargin == 2 || (nargin == 3 && strcmp(varargin{3}, 'void'))) && isa(varargin{1}, 'uint64') && varargin{1} == uint64(5139824614673773682)
        if nargin == 2
          my_ptr = varargin{2};
        else
          my_ptr = gtsam_wrapper(1518, varargin{2});
        end
        gtsam_wrapper(1517, my_ptr);
      elseif nargin == 0
        my_ptr = gtsam_wrapper(1519);
      else
        error('Arguments do not match any overload of gtsam.PreconditionerParameters constructor');
      end
      obj.ptr_gtsamPreconditionerParameters = my_ptr;
    end

    function delete(obj)
      gtsam_wrapper(1520, obj.ptr_gtsamPreconditionerParameters);
    end

    function display(obj), obj.print(''); end
    %DISPLAY Calls print on the object
    function disp(obj), obj.display; end
    %DISP Calls print on the object
  end

  methods(Static = true)
  end
end
