%class BetweenFactorPose2s, see Doxygen page for details
%at https://gtsam.org/doxygen/
%
%-------Constructors-------
%BetweenFactorPose2s()
%
%-------Methods-------
%at(size_t i) : returns gtsam::BetweenFactor<gtsam::Pose2>
%push_back(BetweenFactor<Pose2> factor) : returns void
%size() : returns size_t
%
classdef BetweenFactorPose2s < handle
  properties
    ptr_gtsamBetweenFactorPose2s = 0
  end
  methods
    function obj = BetweenFactorPose2s(varargin)
      if nargin == 2 && isa(varargin{1}, 'uint64') && varargin{1} == uint64(5139824614673773682)
        my_ptr = varargin{2};
        gtsam_wrapper(2902, my_ptr);
      elseif nargin == 0
        my_ptr = gtsam_wrapper(2903);
      else
        error('Arguments do not match any overload of gtsam.BetweenFactorPose2s constructor');
      end
      obj.ptr_gtsamBetweenFactorPose2s = my_ptr;
    end

    function delete(obj)
      gtsam_wrapper(2904, obj.ptr_gtsamBetweenFactorPose2s);
    end

    function display(obj), obj.print(''); end
    %DISPLAY Calls print on the object
    function disp(obj), obj.display; end
    %DISP Calls print on the object
    function varargout = at(this, varargin)
      % AT usage: at(size_t i) : returns gtsam.BetweenFactorPose2
      % Doxygen can be found at https://gtsam.org/doxygen/
      if length(varargin) == 1 && isa(varargin{1},'numeric')
        varargout{1} = gtsam_wrapper(2905, this, varargin{:});
        return
      end
      error('Arguments do not match any overload of function gtsam.BetweenFactorPose2s.at');
    end

    function varargout = push_back(this, varargin)
      % PUSH_BACK usage: push_back(BetweenFactor<Pose2> factor) : returns void
      % Doxygen can be found at https://gtsam.org/doxygen/
      if length(varargin) == 1 && isa(varargin{1},'gtsam.BetweenFactorPose2')
        gtsam_wrapper(2906, this, varargin{:});
        return
      end
      error('Arguments do not match any overload of function gtsam.BetweenFactorPose2s.push_back');
    end

    function varargout = size(this, varargin)
      % SIZE usage: size() : returns size_t
      % Doxygen can be found at https://gtsam.org/doxygen/
      if length(varargin) == 0
        varargout{1} = gtsam_wrapper(2907, this, varargin{:});
        return
      end
      error('Arguments do not match any overload of function gtsam.BetweenFactorPose2s.size');
    end

  end

  methods(Static = true)
  end
end
