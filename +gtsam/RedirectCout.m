%class RedirectCout, see Doxygen page for details
%at https://gtsam.org/doxygen/
%
%-------Constructors-------
%RedirectCout()
%
%-------Methods-------
%str() : returns string
%
classdef RedirectCout < handle
  properties
    ptr_gtsamRedirectCout = 0
  end
  methods
    function obj = RedirectCout(varargin)
      if nargin == 2 && isa(varargin{1}, 'uint64') && varargin{1} == uint64(5139824614673773682)
        my_ptr = varargin{2};
        gtsam_wrapper(103, my_ptr);
      elseif nargin == 0
        my_ptr = gtsam_wrapper(104);
      else
        error('Arguments do not match any overload of gtsam.RedirectCout constructor');
      end
      obj.ptr_gtsamRedirectCout = my_ptr;
    end

    function delete(obj)
      gtsam_wrapper(105, obj.ptr_gtsamRedirectCout);
    end

    function display(obj), obj.print(''); end
    %DISPLAY Calls print on the object
    function disp(obj), obj.display; end
    %DISP Calls print on the object
    function varargout = str(this, varargin)
      % STR usage: str() : returns string
      % Doxygen can be found at https://gtsam.org/doxygen/
      if length(varargin) == 0
        varargout{1} = gtsam_wrapper(106, this, varargin{:});
        return
      end
      error('Arguments do not match any overload of function gtsam.RedirectCout.str');
    end

  end

  methods(Static = true)
  end
end
