%class GncLMParams, see Doxygen page for details
%at https://gtsam.org/doxygen/
%
%-------Constructors-------
%GncLMParams(LevenbergMarquardtParams baseOptimizerParams)
%GncLMParams()
%
%-------Methods-------
%print(string str) : returns void
%setVerbosityGNC(Verbosity value) : returns void
%
classdef GncLMParams < handle
  properties
    ptr_gtsamGncLMParams = 0
  end
  methods
    function obj = GncLMParams(varargin)
      if (nargin == 2 || (nargin == 3 && strcmp(varargin{3}, 'void'))) && isa(varargin{1}, 'uint64') && varargin{1} == uint64(5139824614673773682)
        if nargin == 2
          my_ptr = varargin{2};
        else
          my_ptr = gtsam_wrapper(2482, varargin{2});
        end
        gtsam_wrapper(2481, my_ptr);
      elseif nargin == 1 && isa(varargin{1},'gtsam.LevenbergMarquardtParams')
        my_ptr = gtsam_wrapper(2483, varargin{1});
      elseif nargin == 0
        my_ptr = gtsam_wrapper(2484);
      else
        error('Arguments do not match any overload of gtsam.GncLMParams constructor');
      end
      obj.ptr_gtsamGncLMParams = my_ptr;
    end

    function delete(obj)
      gtsam_wrapper(2485, obj.ptr_gtsamGncLMParams);
    end

    function display(obj), obj.print(''); end
    %DISPLAY Calls print on the object
    function disp(obj), obj.display; end
    %DISP Calls print on the object
    function varargout = print(this, varargin)
      % PRINT usage: print(string str) : returns void
      % Doxygen can be found at https://gtsam.org/doxygen/
      if length(varargin) == 1 && isa(varargin{1},'char')
        gtsam_wrapper(2486, this, varargin{:});
        return
      end
      error('Arguments do not match any overload of function gtsam.GncLMParams.print');
    end

    function varargout = setVerbosityGNC(this, varargin)
      % SETVERBOSITYGNC usage: setVerbosityGNC(Verbosity value) : returns void
      % Doxygen can be found at https://gtsam.org/doxygen/
      if length(varargin) == 1 && isa(varargin{1},'GncParams<gtsam::LevenbergMarquardtParams>.Verbosity')
        gtsam_wrapper(2487, this, varargin{:});
        return
      end
      error('Arguments do not match any overload of function gtsam.GncLMParams.setVerbosityGNC');
    end

  end

  methods(Static = true)
  end
end
