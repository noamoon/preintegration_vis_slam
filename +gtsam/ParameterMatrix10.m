%class ParameterMatrix10, see Doxygen page for details
%at https://gtsam.org/doxygen/
%
%-------Constructors-------
%ParameterMatrix10(size_t N)
%ParameterMatrix10(Matrix matrix)
%
%-------Methods-------
%matrix() : returns Matrix
%print(string s) : returns void
%
classdef ParameterMatrix10 < handle
  properties
    ptr_gtsamParameterMatrix10 = 0
  end
  methods
    function obj = ParameterMatrix10(varargin)
      if nargin == 2 && isa(varargin{1}, 'uint64') && varargin{1} == uint64(5139824614673773682)
        my_ptr = varargin{2};
        gtsam_wrapper(293, my_ptr);
      elseif nargin == 1 && isa(varargin{1},'numeric')
        my_ptr = gtsam_wrapper(294, varargin{1});
      elseif nargin == 1 && isa(varargin{1},'double')
        my_ptr = gtsam_wrapper(295, varargin{1});
      else
        error('Arguments do not match any overload of gtsam.ParameterMatrix10 constructor');
      end
      obj.ptr_gtsamParameterMatrix10 = my_ptr;
    end

    function delete(obj)
      gtsam_wrapper(296, obj.ptr_gtsamParameterMatrix10);
    end

    function display(obj), obj.print(''); end
    %DISPLAY Calls print on the object
    function disp(obj), obj.display; end
    %DISP Calls print on the object
    function varargout = matrix(this, varargin)
      % MATRIX usage: matrix() : returns Matrix
      % Doxygen can be found at https://gtsam.org/doxygen/
      if length(varargin) == 0
        varargout{1} = gtsam_wrapper(297, this, varargin{:});
        return
      end
      error('Arguments do not match any overload of function gtsam.ParameterMatrix10.matrix');
    end

    function varargout = print(this, varargin)
      % PRINT usage: print(string s) : returns void
      % Doxygen can be found at https://gtsam.org/doxygen/
      if length(varargin) == 1 && isa(varargin{1},'char')
        gtsam_wrapper(298, this, varargin{:});
        return
      end
      % PRINT usage: print() : returns void
      % Doxygen can be found at https://gtsam.org/doxygen/
      if length(varargin) == 0
        gtsam_wrapper(299, this, varargin{:});
        return
      end
      error('Arguments do not match any overload of function gtsam.ParameterMatrix10.print');
    end

  end

  methods(Static = true)
  end
end
