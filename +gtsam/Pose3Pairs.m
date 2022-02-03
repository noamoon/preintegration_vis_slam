%class Pose3Pairs, see Doxygen page for details
%at https://gtsam.org/doxygen/
%
%-------Constructors-------
%Pose3Pairs()
%
%-------Methods-------
%at(size_t n) : returns gtsam::Pose3Pair
%empty() : returns bool
%push_back(Pose3Pair pose_pair) : returns void
%size() : returns size_t
%
classdef Pose3Pairs < handle
  properties
    ptr_gtsamPose3Pairs = 0
  end
  methods
    function obj = Pose3Pairs(varargin)
      if nargin == 2 && isa(varargin{1}, 'uint64') && varargin{1} == uint64(5139824614673773682)
        my_ptr = varargin{2};
        gtsam_wrapper(697, my_ptr);
      elseif nargin == 0
        my_ptr = gtsam_wrapper(698);
      else
        error('Arguments do not match any overload of gtsam.Pose3Pairs constructor');
      end
      obj.ptr_gtsamPose3Pairs = my_ptr;
    end

    function delete(obj)
      gtsam_wrapper(699, obj.ptr_gtsamPose3Pairs);
    end

    function display(obj), obj.print(''); end
    %DISPLAY Calls print on the object
    function disp(obj), obj.display; end
    %DISP Calls print on the object
    function varargout = at(this, varargin)
      % AT usage: at(size_t n) : returns gtsam.Pose3Pair
      % Doxygen can be found at https://gtsam.org/doxygen/
      if length(varargin) == 1 && isa(varargin{1},'numeric')
        varargout{1} = gtsam_wrapper(700, this, varargin{:});
        return
      end
      error('Arguments do not match any overload of function gtsam.Pose3Pairs.at');
    end

    function varargout = empty(this, varargin)
      % EMPTY usage: empty() : returns bool
      % Doxygen can be found at https://gtsam.org/doxygen/
      if length(varargin) == 0
        varargout{1} = gtsam_wrapper(701, this, varargin{:});
        return
      end
      error('Arguments do not match any overload of function gtsam.Pose3Pairs.empty');
    end

    function varargout = push_back(this, varargin)
      % PUSH_BACK usage: push_back(Pose3Pair pose_pair) : returns void
      % Doxygen can be found at https://gtsam.org/doxygen/
      if length(varargin) == 1 && isa(varargin{1},'gtsam.Pose3Pair')
        gtsam_wrapper(702, this, varargin{:});
        return
      end
      error('Arguments do not match any overload of function gtsam.Pose3Pairs.push_back');
    end

    function varargout = size(this, varargin)
      % SIZE usage: size() : returns size_t
      % Doxygen can be found at https://gtsam.org/doxygen/
      if length(varargin) == 0
        varargout{1} = gtsam_wrapper(703, this, varargin{:});
        return
      end
      error('Arguments do not match any overload of function gtsam.Pose3Pairs.size');
    end

  end

  methods(Static = true)
  end
end
