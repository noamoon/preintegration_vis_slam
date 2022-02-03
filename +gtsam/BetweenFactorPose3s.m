%class BetweenFactorPose3s, see Doxygen page for details
%at https://gtsam.org/doxygen/
%
%-------Constructors-------
%BetweenFactorPose3s()
%
%-------Methods-------
%at(size_t i) : returns gtsam::BetweenFactor<gtsam::Pose3>
%push_back(BetweenFactor<Pose3> factor) : returns void
%size() : returns size_t
%
classdef BetweenFactorPose3s < handle
  properties
    ptr_gtsamBetweenFactorPose3s = 0
  end
  methods
    function obj = BetweenFactorPose3s(varargin)
      if nargin == 2 && isa(varargin{1}, 'uint64') && varargin{1} == uint64(5139824614673773682)
        my_ptr = varargin{2};
        gtsam_wrapper(2908, my_ptr);
      elseif nargin == 0
        my_ptr = gtsam_wrapper(2909);
      else
        error('Arguments do not match any overload of gtsam.BetweenFactorPose3s constructor');
      end
      obj.ptr_gtsamBetweenFactorPose3s = my_ptr;
    end

    function delete(obj)
      gtsam_wrapper(2910, obj.ptr_gtsamBetweenFactorPose3s);
    end

    function display(obj), obj.print(''); end
    %DISPLAY Calls print on the object
    function disp(obj), obj.display; end
    %DISP Calls print on the object
    function varargout = at(this, varargin)
      % AT usage: at(size_t i) : returns gtsam.BetweenFactorPose3
      % Doxygen can be found at https://gtsam.org/doxygen/
      if length(varargin) == 1 && isa(varargin{1},'numeric')
        varargout{1} = gtsam_wrapper(2911, this, varargin{:});
        return
      end
      error('Arguments do not match any overload of function gtsam.BetweenFactorPose3s.at');
    end

    function varargout = push_back(this, varargin)
      % PUSH_BACK usage: push_back(BetweenFactor<Pose3> factor) : returns void
      % Doxygen can be found at https://gtsam.org/doxygen/
      if length(varargin) == 1 && isa(varargin{1},'gtsam.BetweenFactorPose3')
        gtsam_wrapper(2912, this, varargin{:});
        return
      end
      error('Arguments do not match any overload of function gtsam.BetweenFactorPose3s.push_back');
    end

    function varargout = size(this, varargin)
      % SIZE usage: size() : returns size_t
      % Doxygen can be found at https://gtsam.org/doxygen/
      if length(varargin) == 0
        varargout{1} = gtsam_wrapper(2913, this, varargin{:});
        return
      end
      error('Arguments do not match any overload of function gtsam.BetweenFactorPose3s.size');
    end

  end

  methods(Static = true)
  end
end
