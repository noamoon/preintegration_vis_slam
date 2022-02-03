%class ParameterMatrix5, see Doxygen page for details
%at https://gtsam.org/doxygen/
%
%-------Constructors-------
%ParameterMatrix5(size_t N)
%ParameterMatrix5(Matrix matrix)
%
%-------Methods-------
%matrix() : returns Matrix
%print(string s) : returns void
%
classdef ParameterMatrix5 < handle
  properties
    ptr_gtsamParameterMatrix5 = 0
  end
  methods
    function obj = ParameterMatrix5(varargin)
      if nargin == 2 && isa(varargin{1}, 'uint64') && varargin{1} == uint64(5139824614673773682)
        my_ptr = varargin{2};
        gtsam_wrapper(258, my_ptr);
      elseif nargin == 1 && isa(varargin{1},'numeric')
        my_ptr = gtsam_wrapper(259, varargin{1});
      elseif nargin == 1 && isa(varargin{1},'double')
        my_ptr = gtsam_wrapper(260, varargin{1});
      else
        error('Arguments do not match any overload of gtsam.ParameterMatrix5 constructor');
      end
      obj.ptr_gtsamParameterMatrix5 = my_ptr;
    end

    function delete(obj)
      gtsam_wrapper(261, obj.ptr_gtsamParameterMatrix5);
    end

    function display(obj), obj.print(''); end
    %DISPLAY Calls print on the object
    function disp(obj), obj.display; end
    %DISP Calls print on the object
    function varargout = matrix(this, varargin)
      % MATRIX usage: matrix() : returns Matrix
      % Doxygen can be found at https://gtsam.org/doxygen/
      if length(varargin) == 0
        varargout{1} = gtsam_wrapper(262, this, varargin{:});
        return
      end
      error('Arguments do not match any overload of function gtsam.ParameterMatrix5.matrix');
    end

    function varargout = print(this, varargin)
      % PRINT usage: print(string s) : returns void
      % Doxygen can be found at https://gtsam.org/doxygen/
      if length(varargin) == 1 && isa(varargin{1},'char')
        gtsam_wrapper(263, this, varargin{:});
        return
      end
      % PRINT usage: print() : returns void
      % Doxygen can be found at https://gtsam.org/doxygen/
      if length(varargin) == 0
        gtsam_wrapper(264, this, varargin{:});
        return
      end
      error('Arguments do not match any overload of function gtsam.ParameterMatrix5.print');
    end

  end

  methods(Static = true)
  end
end
