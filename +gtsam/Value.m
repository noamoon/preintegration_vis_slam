%class Value, see Doxygen page for details
%at https://gtsam.org/doxygen/
%
%-------Methods-------
%dim() : returns size_t
%print(string s) : returns void
%
classdef Value < handle
  properties
    ptr_gtsamValue = 0
  end
  methods
    function obj = Value(varargin)
      if (nargin == 2 || (nargin == 3 && strcmp(varargin{3}, 'void'))) && isa(varargin{1}, 'uint64') && varargin{1} == uint64(5139824614673773682)
        if nargin == 2
          my_ptr = varargin{2};
        else
          my_ptr = gtsam_wrapper(145, varargin{2});
        end
        gtsam_wrapper(144, my_ptr);
      else
        error('Arguments do not match any overload of gtsam.Value constructor');
      end
      obj.ptr_gtsamValue = my_ptr;
    end

    function delete(obj)
      gtsam_wrapper(146, obj.ptr_gtsamValue);
    end

    function display(obj), obj.print(''); end
    %DISPLAY Calls print on the object
    function disp(obj), obj.display; end
    %DISP Calls print on the object
    function varargout = dim(this, varargin)
      % DIM usage: dim() : returns size_t
      % Doxygen can be found at https://gtsam.org/doxygen/
      if length(varargin) == 0
        varargout{1} = gtsam_wrapper(147, this, varargin{:});
        return
      end
      error('Arguments do not match any overload of function gtsam.Value.dim');
    end

    function varargout = print(this, varargin)
      % PRINT usage: print(string s) : returns void
      % Doxygen can be found at https://gtsam.org/doxygen/
      if length(varargin) == 1 && isa(varargin{1},'char')
        gtsam_wrapper(148, this, varargin{:});
        return
      end
      % PRINT usage: print() : returns void
      % Doxygen can be found at https://gtsam.org/doxygen/
      if length(varargin) == 0
        gtsam_wrapper(149, this, varargin{:});
        return
      end
      error('Arguments do not match any overload of function gtsam.Value.print');
    end

  end

  methods(Static = true)
  end
end
