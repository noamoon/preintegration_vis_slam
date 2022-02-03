%class GaussianISAM, see Doxygen page for details
%at https://gtsam.org/doxygen/
%
%-------Constructors-------
%GaussianISAM()
%
%-------Methods-------
%clear() : returns void
%saveGraph(string s) : returns void
%update(GaussianFactorGraph newFactors) : returns void
%
classdef GaussianISAM < handle
  properties
    ptr_gtsamGaussianISAM = 0
  end
  methods
    function obj = GaussianISAM(varargin)
      if nargin == 2 && isa(varargin{1}, 'uint64') && varargin{1} == uint64(5139824614673773682)
        my_ptr = varargin{2};
        gtsam_wrapper(1492, my_ptr);
      elseif nargin == 0
        my_ptr = gtsam_wrapper(1493);
      else
        error('Arguments do not match any overload of gtsam.GaussianISAM constructor');
      end
      obj.ptr_gtsamGaussianISAM = my_ptr;
    end

    function delete(obj)
      gtsam_wrapper(1494, obj.ptr_gtsamGaussianISAM);
    end

    function display(obj), obj.print(''); end
    %DISPLAY Calls print on the object
    function disp(obj), obj.display; end
    %DISP Calls print on the object
    function varargout = clear(this, varargin)
      % CLEAR usage: clear() : returns void
      % Doxygen can be found at https://gtsam.org/doxygen/
      if length(varargin) == 0
        gtsam_wrapper(1495, this, varargin{:});
        return
      end
      error('Arguments do not match any overload of function gtsam.GaussianISAM.clear');
    end

    function varargout = saveGraph(this, varargin)
      % SAVEGRAPH usage: saveGraph(string s) : returns void
      % Doxygen can be found at https://gtsam.org/doxygen/
      if length(varargin) == 1 && isa(varargin{1},'char')
        gtsam_wrapper(1496, this, varargin{:});
        return
      end
      error('Arguments do not match any overload of function gtsam.GaussianISAM.saveGraph');
    end

    function varargout = update(this, varargin)
      % UPDATE usage: update(GaussianFactorGraph newFactors) : returns void
      % Doxygen can be found at https://gtsam.org/doxygen/
      if length(varargin) == 1 && isa(varargin{1},'gtsam.GaussianFactorGraph')
        gtsam_wrapper(1497, this, varargin{:});
        return
      end
      error('Arguments do not match any overload of function gtsam.GaussianISAM.update');
    end

  end

  methods(Static = true)
  end
end
