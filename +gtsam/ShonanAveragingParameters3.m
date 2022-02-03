%class ShonanAveragingParameters3, see Doxygen page for details
%at https://gtsam.org/doxygen/
%
%-------Constructors-------
%ShonanAveragingParameters3(LevenbergMarquardtParams lm)
%ShonanAveragingParameters3(LevenbergMarquardtParams lm, string method)
%
%-------Methods-------
%getAnchor() : returns pair< size_t, gtsam::Rot3 >
%getAnchorWeight() : returns double
%getCertifyOptimality() : returns bool
%getGaugesWeight() : returns double
%getKarcherWeight() : returns double
%getLMParams() : returns gtsam::LevenbergMarquardtParams
%getOptimalityThreshold() : returns double
%getUseHuber() : returns bool
%setAnchor(size_t index, Rot3 value) : returns void
%setAnchorWeight(double value) : returns void
%setCertifyOptimality(bool value) : returns void
%setGaugesWeight(double value) : returns void
%setKarcherWeight(double value) : returns void
%setOptimalityThreshold(double value) : returns void
%setUseHuber(bool value) : returns void
%
classdef ShonanAveragingParameters3 < handle
  properties
    ptr_gtsamShonanAveragingParameters3 = 0
  end
  methods
    function obj = ShonanAveragingParameters3(varargin)
      if nargin == 2 && isa(varargin{1}, 'uint64') && varargin{1} == uint64(5139824614673773682)
        my_ptr = varargin{2};
        gtsam_wrapper(3149, my_ptr);
      elseif nargin == 1 && isa(varargin{1},'gtsam.LevenbergMarquardtParams')
        my_ptr = gtsam_wrapper(3150, varargin{1});
      elseif nargin == 2 && isa(varargin{1},'gtsam.LevenbergMarquardtParams') && isa(varargin{2},'char')
        my_ptr = gtsam_wrapper(3151, varargin{1}, varargin{2});
      else
        error('Arguments do not match any overload of gtsam.ShonanAveragingParameters3 constructor');
      end
      obj.ptr_gtsamShonanAveragingParameters3 = my_ptr;
    end

    function delete(obj)
      gtsam_wrapper(3152, obj.ptr_gtsamShonanAveragingParameters3);
    end

    function display(obj), obj.print(''); end
    %DISPLAY Calls print on the object
    function disp(obj), obj.display; end
    %DISP Calls print on the object
    function varargout = getAnchor(this, varargin)
      % GETANCHOR usage: getAnchor() : returns pair< size_t, gtsam.Rot3 >
      % Doxygen can be found at https://gtsam.org/doxygen/
      if length(varargin) == 0
        [ varargout{1} varargout{2} ] = gtsam_wrapper(3153, this, varargin{:});
        return
      end
      error('Arguments do not match any overload of function gtsam.ShonanAveragingParameters3.getAnchor');
    end

    function varargout = getAnchorWeight(this, varargin)
      % GETANCHORWEIGHT usage: getAnchorWeight() : returns double
      % Doxygen can be found at https://gtsam.org/doxygen/
      if length(varargin) == 0
        varargout{1} = gtsam_wrapper(3154, this, varargin{:});
        return
      end
      error('Arguments do not match any overload of function gtsam.ShonanAveragingParameters3.getAnchorWeight');
    end

    function varargout = getCertifyOptimality(this, varargin)
      % GETCERTIFYOPTIMALITY usage: getCertifyOptimality() : returns bool
      % Doxygen can be found at https://gtsam.org/doxygen/
      if length(varargin) == 0
        varargout{1} = gtsam_wrapper(3155, this, varargin{:});
        return
      end
      error('Arguments do not match any overload of function gtsam.ShonanAveragingParameters3.getCertifyOptimality');
    end

    function varargout = getGaugesWeight(this, varargin)
      % GETGAUGESWEIGHT usage: getGaugesWeight() : returns double
      % Doxygen can be found at https://gtsam.org/doxygen/
      if length(varargin) == 0
        varargout{1} = gtsam_wrapper(3156, this, varargin{:});
        return
      end
      error('Arguments do not match any overload of function gtsam.ShonanAveragingParameters3.getGaugesWeight');
    end

    function varargout = getKarcherWeight(this, varargin)
      % GETKARCHERWEIGHT usage: getKarcherWeight() : returns double
      % Doxygen can be found at https://gtsam.org/doxygen/
      if length(varargin) == 0
        varargout{1} = gtsam_wrapper(3157, this, varargin{:});
        return
      end
      error('Arguments do not match any overload of function gtsam.ShonanAveragingParameters3.getKarcherWeight');
    end

    function varargout = getLMParams(this, varargin)
      % GETLMPARAMS usage: getLMParams() : returns gtsam.LevenbergMarquardtParams
      % Doxygen can be found at https://gtsam.org/doxygen/
      if length(varargin) == 0
        varargout{1} = gtsam_wrapper(3158, this, varargin{:});
        return
      end
      error('Arguments do not match any overload of function gtsam.ShonanAveragingParameters3.getLMParams');
    end

    function varargout = getOptimalityThreshold(this, varargin)
      % GETOPTIMALITYTHRESHOLD usage: getOptimalityThreshold() : returns double
      % Doxygen can be found at https://gtsam.org/doxygen/
      if length(varargin) == 0
        varargout{1} = gtsam_wrapper(3159, this, varargin{:});
        return
      end
      error('Arguments do not match any overload of function gtsam.ShonanAveragingParameters3.getOptimalityThreshold');
    end

    function varargout = getUseHuber(this, varargin)
      % GETUSEHUBER usage: getUseHuber() : returns bool
      % Doxygen can be found at https://gtsam.org/doxygen/
      if length(varargin) == 0
        varargout{1} = gtsam_wrapper(3160, this, varargin{:});
        return
      end
      error('Arguments do not match any overload of function gtsam.ShonanAveragingParameters3.getUseHuber');
    end

    function varargout = setAnchor(this, varargin)
      % SETANCHOR usage: setAnchor(size_t index, Rot3 value) : returns void
      % Doxygen can be found at https://gtsam.org/doxygen/
      if length(varargin) == 2 && isa(varargin{1},'numeric') && isa(varargin{2},'gtsam.Rot3')
        gtsam_wrapper(3161, this, varargin{:});
        return
      end
      error('Arguments do not match any overload of function gtsam.ShonanAveragingParameters3.setAnchor');
    end

    function varargout = setAnchorWeight(this, varargin)
      % SETANCHORWEIGHT usage: setAnchorWeight(double value) : returns void
      % Doxygen can be found at https://gtsam.org/doxygen/
      if length(varargin) == 1 && isa(varargin{1},'double')
        gtsam_wrapper(3162, this, varargin{:});
        return
      end
      error('Arguments do not match any overload of function gtsam.ShonanAveragingParameters3.setAnchorWeight');
    end

    function varargout = setCertifyOptimality(this, varargin)
      % SETCERTIFYOPTIMALITY usage: setCertifyOptimality(bool value) : returns void
      % Doxygen can be found at https://gtsam.org/doxygen/
      if length(varargin) == 1 && isa(varargin{1},'logical')
        gtsam_wrapper(3163, this, varargin{:});
        return
      end
      error('Arguments do not match any overload of function gtsam.ShonanAveragingParameters3.setCertifyOptimality');
    end

    function varargout = setGaugesWeight(this, varargin)
      % SETGAUGESWEIGHT usage: setGaugesWeight(double value) : returns void
      % Doxygen can be found at https://gtsam.org/doxygen/
      if length(varargin) == 1 && isa(varargin{1},'double')
        gtsam_wrapper(3164, this, varargin{:});
        return
      end
      error('Arguments do not match any overload of function gtsam.ShonanAveragingParameters3.setGaugesWeight');
    end

    function varargout = setKarcherWeight(this, varargin)
      % SETKARCHERWEIGHT usage: setKarcherWeight(double value) : returns void
      % Doxygen can be found at https://gtsam.org/doxygen/
      if length(varargin) == 1 && isa(varargin{1},'double')
        gtsam_wrapper(3165, this, varargin{:});
        return
      end
      error('Arguments do not match any overload of function gtsam.ShonanAveragingParameters3.setKarcherWeight');
    end

    function varargout = setOptimalityThreshold(this, varargin)
      % SETOPTIMALITYTHRESHOLD usage: setOptimalityThreshold(double value) : returns void
      % Doxygen can be found at https://gtsam.org/doxygen/
      if length(varargin) == 1 && isa(varargin{1},'double')
        gtsam_wrapper(3166, this, varargin{:});
        return
      end
      error('Arguments do not match any overload of function gtsam.ShonanAveragingParameters3.setOptimalityThreshold');
    end

    function varargout = setUseHuber(this, varargin)
      % SETUSEHUBER usage: setUseHuber(bool value) : returns void
      % Doxygen can be found at https://gtsam.org/doxygen/
      if length(varargin) == 1 && isa(varargin{1},'logical')
        gtsam_wrapper(3167, this, varargin{:});
        return
      end
      error('Arguments do not match any overload of function gtsam.ShonanAveragingParameters3.setUseHuber');
    end

  end

  methods(Static = true)
  end
end
