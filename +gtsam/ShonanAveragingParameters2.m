%class ShonanAveragingParameters2, see Doxygen page for details
%at https://gtsam.org/doxygen/
%
%-------Constructors-------
%ShonanAveragingParameters2(LevenbergMarquardtParams lm)
%ShonanAveragingParameters2(LevenbergMarquardtParams lm, string method)
%
%-------Methods-------
%getAnchor() : returns pair< size_t, gtsam::Rot2 >
%getAnchorWeight() : returns double
%getCertifyOptimality() : returns bool
%getGaugesWeight() : returns double
%getKarcherWeight() : returns double
%getLMParams() : returns gtsam::LevenbergMarquardtParams
%getOptimalityThreshold() : returns double
%getUseHuber() : returns bool
%setAnchor(size_t index, Rot2 value) : returns void
%setAnchorWeight(double value) : returns void
%setCertifyOptimality(bool value) : returns void
%setGaugesWeight(double value) : returns void
%setKarcherWeight(double value) : returns void
%setOptimalityThreshold(double value) : returns void
%setUseHuber(bool value) : returns void
%
classdef ShonanAveragingParameters2 < handle
  properties
    ptr_gtsamShonanAveragingParameters2 = 0
  end
  methods
    function obj = ShonanAveragingParameters2(varargin)
      if nargin == 2 && isa(varargin{1}, 'uint64') && varargin{1} == uint64(5139824614673773682)
        my_ptr = varargin{2};
        gtsam_wrapper(3130, my_ptr);
      elseif nargin == 1 && isa(varargin{1},'gtsam.LevenbergMarquardtParams')
        my_ptr = gtsam_wrapper(3131, varargin{1});
      elseif nargin == 2 && isa(varargin{1},'gtsam.LevenbergMarquardtParams') && isa(varargin{2},'char')
        my_ptr = gtsam_wrapper(3132, varargin{1}, varargin{2});
      else
        error('Arguments do not match any overload of gtsam.ShonanAveragingParameters2 constructor');
      end
      obj.ptr_gtsamShonanAveragingParameters2 = my_ptr;
    end

    function delete(obj)
      gtsam_wrapper(3133, obj.ptr_gtsamShonanAveragingParameters2);
    end

    function display(obj), obj.print(''); end
    %DISPLAY Calls print on the object
    function disp(obj), obj.display; end
    %DISP Calls print on the object
    function varargout = getAnchor(this, varargin)
      % GETANCHOR usage: getAnchor() : returns pair< size_t, gtsam.Rot2 >
      % Doxygen can be found at https://gtsam.org/doxygen/
      if length(varargin) == 0
        [ varargout{1} varargout{2} ] = gtsam_wrapper(3134, this, varargin{:});
        return
      end
      error('Arguments do not match any overload of function gtsam.ShonanAveragingParameters2.getAnchor');
    end

    function varargout = getAnchorWeight(this, varargin)
      % GETANCHORWEIGHT usage: getAnchorWeight() : returns double
      % Doxygen can be found at https://gtsam.org/doxygen/
      if length(varargin) == 0
        varargout{1} = gtsam_wrapper(3135, this, varargin{:});
        return
      end
      error('Arguments do not match any overload of function gtsam.ShonanAveragingParameters2.getAnchorWeight');
    end

    function varargout = getCertifyOptimality(this, varargin)
      % GETCERTIFYOPTIMALITY usage: getCertifyOptimality() : returns bool
      % Doxygen can be found at https://gtsam.org/doxygen/
      if length(varargin) == 0
        varargout{1} = gtsam_wrapper(3136, this, varargin{:});
        return
      end
      error('Arguments do not match any overload of function gtsam.ShonanAveragingParameters2.getCertifyOptimality');
    end

    function varargout = getGaugesWeight(this, varargin)
      % GETGAUGESWEIGHT usage: getGaugesWeight() : returns double
      % Doxygen can be found at https://gtsam.org/doxygen/
      if length(varargin) == 0
        varargout{1} = gtsam_wrapper(3137, this, varargin{:});
        return
      end
      error('Arguments do not match any overload of function gtsam.ShonanAveragingParameters2.getGaugesWeight');
    end

    function varargout = getKarcherWeight(this, varargin)
      % GETKARCHERWEIGHT usage: getKarcherWeight() : returns double
      % Doxygen can be found at https://gtsam.org/doxygen/
      if length(varargin) == 0
        varargout{1} = gtsam_wrapper(3138, this, varargin{:});
        return
      end
      error('Arguments do not match any overload of function gtsam.ShonanAveragingParameters2.getKarcherWeight');
    end

    function varargout = getLMParams(this, varargin)
      % GETLMPARAMS usage: getLMParams() : returns gtsam.LevenbergMarquardtParams
      % Doxygen can be found at https://gtsam.org/doxygen/
      if length(varargin) == 0
        varargout{1} = gtsam_wrapper(3139, this, varargin{:});
        return
      end
      error('Arguments do not match any overload of function gtsam.ShonanAveragingParameters2.getLMParams');
    end

    function varargout = getOptimalityThreshold(this, varargin)
      % GETOPTIMALITYTHRESHOLD usage: getOptimalityThreshold() : returns double
      % Doxygen can be found at https://gtsam.org/doxygen/
      if length(varargin) == 0
        varargout{1} = gtsam_wrapper(3140, this, varargin{:});
        return
      end
      error('Arguments do not match any overload of function gtsam.ShonanAveragingParameters2.getOptimalityThreshold');
    end

    function varargout = getUseHuber(this, varargin)
      % GETUSEHUBER usage: getUseHuber() : returns bool
      % Doxygen can be found at https://gtsam.org/doxygen/
      if length(varargin) == 0
        varargout{1} = gtsam_wrapper(3141, this, varargin{:});
        return
      end
      error('Arguments do not match any overload of function gtsam.ShonanAveragingParameters2.getUseHuber');
    end

    function varargout = setAnchor(this, varargin)
      % SETANCHOR usage: setAnchor(size_t index, Rot2 value) : returns void
      % Doxygen can be found at https://gtsam.org/doxygen/
      if length(varargin) == 2 && isa(varargin{1},'numeric') && isa(varargin{2},'gtsam.Rot2')
        gtsam_wrapper(3142, this, varargin{:});
        return
      end
      error('Arguments do not match any overload of function gtsam.ShonanAveragingParameters2.setAnchor');
    end

    function varargout = setAnchorWeight(this, varargin)
      % SETANCHORWEIGHT usage: setAnchorWeight(double value) : returns void
      % Doxygen can be found at https://gtsam.org/doxygen/
      if length(varargin) == 1 && isa(varargin{1},'double')
        gtsam_wrapper(3143, this, varargin{:});
        return
      end
      error('Arguments do not match any overload of function gtsam.ShonanAveragingParameters2.setAnchorWeight');
    end

    function varargout = setCertifyOptimality(this, varargin)
      % SETCERTIFYOPTIMALITY usage: setCertifyOptimality(bool value) : returns void
      % Doxygen can be found at https://gtsam.org/doxygen/
      if length(varargin) == 1 && isa(varargin{1},'logical')
        gtsam_wrapper(3144, this, varargin{:});
        return
      end
      error('Arguments do not match any overload of function gtsam.ShonanAveragingParameters2.setCertifyOptimality');
    end

    function varargout = setGaugesWeight(this, varargin)
      % SETGAUGESWEIGHT usage: setGaugesWeight(double value) : returns void
      % Doxygen can be found at https://gtsam.org/doxygen/
      if length(varargin) == 1 && isa(varargin{1},'double')
        gtsam_wrapper(3145, this, varargin{:});
        return
      end
      error('Arguments do not match any overload of function gtsam.ShonanAveragingParameters2.setGaugesWeight');
    end

    function varargout = setKarcherWeight(this, varargin)
      % SETKARCHERWEIGHT usage: setKarcherWeight(double value) : returns void
      % Doxygen can be found at https://gtsam.org/doxygen/
      if length(varargin) == 1 && isa(varargin{1},'double')
        gtsam_wrapper(3146, this, varargin{:});
        return
      end
      error('Arguments do not match any overload of function gtsam.ShonanAveragingParameters2.setKarcherWeight');
    end

    function varargout = setOptimalityThreshold(this, varargin)
      % SETOPTIMALITYTHRESHOLD usage: setOptimalityThreshold(double value) : returns void
      % Doxygen can be found at https://gtsam.org/doxygen/
      if length(varargin) == 1 && isa(varargin{1},'double')
        gtsam_wrapper(3147, this, varargin{:});
        return
      end
      error('Arguments do not match any overload of function gtsam.ShonanAveragingParameters2.setOptimalityThreshold');
    end

    function varargout = setUseHuber(this, varargin)
      % SETUSEHUBER usage: setUseHuber(bool value) : returns void
      % Doxygen can be found at https://gtsam.org/doxygen/
      if length(varargin) == 1 && isa(varargin{1},'logical')
        gtsam_wrapper(3148, this, varargin{:});
        return
      end
      error('Arguments do not match any overload of function gtsam.ShonanAveragingParameters2.setUseHuber');
    end

  end

  methods(Static = true)
  end
end
