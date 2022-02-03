%class Base, see Doxygen page for details
%at https://gtsam.org/doxygen/
%
%-------Methods-------
%print(string s) : returns void
%
classdef Base < handle
  properties
    ptr_gtsamnoiseModelmEstimatorBase = 0
  end
  methods
    function obj = Base(varargin)
      if (nargin == 2 || (nargin == 3 && strcmp(varargin{3}, 'void'))) && isa(varargin{1}, 'uint64') && varargin{1} == uint64(5139824614673773682)
        if nargin == 2
          my_ptr = varargin{2};
        else
          my_ptr = gtsam_wrapper(1155, varargin{2});
        end
        gtsam_wrapper(1154, my_ptr);
      else
        error('Arguments do not match any overload of gtsam.noiseModel.mEstimator.Base constructor');
      end
      obj.ptr_gtsamnoiseModelmEstimatorBase = my_ptr;
    end

    function delete(obj)
      gtsam_wrapper(1156, obj.ptr_gtsamnoiseModelmEstimatorBase);
    end

    function display(obj), obj.print(''); end
    %DISPLAY Calls print on the object
    function disp(obj), obj.display; end
    %DISP Calls print on the object
    function varargout = print(this, varargin)
      % PRINT usage: print(string s) : returns void
      % Doxygen can be found at https://gtsam.org/doxygen/
      if length(varargin) == 1 && isa(varargin{1},'char')
        gtsam_wrapper(1157, this, varargin{:});
        return
      end
      % PRINT usage: print() : returns void
      % Doxygen can be found at https://gtsam.org/doxygen/
      if length(varargin) == 0
        gtsam_wrapper(1158, this, varargin{:});
        return
      end
      error('Arguments do not match any overload of function gtsamnoiseModelmEstimator.Base.print');
    end

  end

  methods(Static = true)
  end
end
