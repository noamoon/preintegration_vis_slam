%class GncGaussNewtonParams, see Doxygen page for details
%at https://gtsam.org/doxygen/
%
%-------Constructors-------
%GncGaussNewtonParams(GaussNewtonParams baseOptimizerParams)
%GncGaussNewtonParams()
%
%-------Methods-------
%print(string str) : returns void
%setVerbosityGNC(Verbosity value) : returns void
%
classdef GncGaussNewtonParams < handle
  properties
    ptr_gtsamGncGaussNewtonParams = 0
  end
  methods
    function obj = GncGaussNewtonParams(varargin)
      if (nargin == 2 || (nargin == 3 && strcmp(varargin{3}, 'void'))) && isa(varargin{1}, 'uint64') && varargin{1} == uint64(5139824614673773682)
        if nargin == 2
          my_ptr = varargin{2};
        else
          my_ptr = gtsam_wrapper(2475, varargin{2});
        end
        gtsam_wrapper(2474, my_ptr);
      elseif nargin == 1 && isa(varargin{1},'gtsam.GaussNewtonParams')
        my_ptr = gtsam_wrapper(2476, varargin{1});
      elseif nargin == 0
        my_ptr = gtsam_wrapper(2477);
      else
        error('Arguments do not match any overload of gtsam.GncGaussNewtonParams constructor');
      end
      obj.ptr_gtsamGncGaussNewtonParams = my_ptr;
    end

    function delete(obj)
      gtsam_wrapper(2478, obj.ptr_gtsamGncGaussNewtonParams);
    end

    function display(obj), obj.print(''); end
    %DISPLAY Calls print on the object
    function disp(obj), obj.display; end
    %DISP Calls print on the object
    function varargout = print(this, varargin)
      % PRINT usage: print(string str) : returns void
      % Doxygen can be found at https://gtsam.org/doxygen/
      if length(varargin) == 1 && isa(varargin{1},'char')
        gtsam_wrapper(2479, this, varargin{:});
        return
      end
      error('Arguments do not match any overload of function gtsam.GncGaussNewtonParams.print');
    end

    function varargout = setVerbosityGNC(this, varargin)
      % SETVERBOSITYGNC usage: setVerbosityGNC(Verbosity value) : returns void
      % Doxygen can be found at https://gtsam.org/doxygen/
      if length(varargin) == 1 && isa(varargin{1},'GncParams<gtsam::GaussNewtonParams>.Verbosity')
        gtsam_wrapper(2480, this, varargin{:});
        return
      end
      error('Arguments do not match any overload of function gtsam.GncGaussNewtonParams.setVerbosityGNC');
    end

  end

  methods(Static = true)
  end
end
