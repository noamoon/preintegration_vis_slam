%class BearingRange2D, see Doxygen page for details
%at https://gtsam.org/doxygen/
%
%-------Constructors-------
%BearingRange2D(Rot2 b, double r)
%
%-------Methods-------
%bearing() : returns gtsam::Rot2
%print(string s) : returns void
%range() : returns double
%
%-------Static Methods-------
%Measure(Pose2 pose, Point2 point) : returns gtsam::BearingRange<gtsam::Pose2,Point2,gtsam::Rot2,double>
%MeasureBearing(Pose2 pose, Point2 point) : returns gtsam::Rot2
%MeasureRange(Pose2 pose, Point2 point) : returns double
%
%-------Serialization Interface-------
%string_serialize() : returns string
%string_deserialize(string serialized) : returns BearingRange2D
%
classdef BearingRange2D < handle
  properties
    ptr_gtsamBearingRange2D = 0
  end
  methods
    function obj = BearingRange2D(varargin)
      if nargin == 2 && isa(varargin{1}, 'uint64') && varargin{1} == uint64(5139824614673773682)
        my_ptr = varargin{2};
        gtsam_wrapper(1071, my_ptr);
      elseif nargin == 2 && isa(varargin{1},'gtsam.Rot2') && isa(varargin{2},'double')
        my_ptr = gtsam_wrapper(1072, varargin{1}, varargin{2});
      else
        error('Arguments do not match any overload of gtsam.BearingRange2D constructor');
      end
      obj.ptr_gtsamBearingRange2D = my_ptr;
    end

    function delete(obj)
      gtsam_wrapper(1073, obj.ptr_gtsamBearingRange2D);
    end

    function display(obj), obj.print(''); end
    %DISPLAY Calls print on the object
    function disp(obj), obj.display; end
    %DISP Calls print on the object
    function varargout = bearing(this, varargin)
      % BEARING usage: bearing() : returns gtsam.Rot2
      % Doxygen can be found at https://gtsam.org/doxygen/
      if length(varargin) == 0
        varargout{1} = gtsam_wrapper(1074, this, varargin{:});
        return
      end
      error('Arguments do not match any overload of function gtsam.BearingRange2D.bearing');
    end

    function varargout = print(this, varargin)
      % PRINT usage: print(string s) : returns void
      % Doxygen can be found at https://gtsam.org/doxygen/
      if length(varargin) == 1 && isa(varargin{1},'char')
        gtsam_wrapper(1075, this, varargin{:});
        return
      end
      % PRINT usage: print() : returns void
      % Doxygen can be found at https://gtsam.org/doxygen/
      if length(varargin) == 0
        gtsam_wrapper(1076, this, varargin{:});
        return
      end
      error('Arguments do not match any overload of function gtsam.BearingRange2D.print');
    end

    function varargout = range(this, varargin)
      % RANGE usage: range() : returns double
      % Doxygen can be found at https://gtsam.org/doxygen/
      if length(varargin) == 0
        varargout{1} = gtsam_wrapper(1077, this, varargin{:});
        return
      end
      error('Arguments do not match any overload of function gtsam.BearingRange2D.range');
    end

  end

  methods(Static = true)
    function varargout = Measure(varargin)
      % MEASURE usage: Measure(Pose2 pose, Point2 point) : returns gtsam.BearingRangePose2Point2Rot2double
      % Doxygen can be found at https://gtsam.org/doxygen/
      if length(varargin) == 2 && isa(varargin{1},'gtsam.Pose2') && isa(varargin{2},'double') && size(varargin{2},1)==2 && size(varargin{2},2)==1
        varargout{1} = gtsam_wrapper(1078, varargin{:});
        return
      end

      error('Arguments do not match any overload of function BearingRange2D.Measure');
    end

    function varargout = MeasureBearing(varargin)
      % MEASUREBEARING usage: MeasureBearing(Pose2 pose, Point2 point) : returns gtsam.Rot2
      % Doxygen can be found at https://gtsam.org/doxygen/
      if length(varargin) == 2 && isa(varargin{1},'gtsam.Pose2') && isa(varargin{2},'double') && size(varargin{2},1)==2 && size(varargin{2},2)==1
        varargout{1} = gtsam_wrapper(1079, varargin{:});
        return
      end

      error('Arguments do not match any overload of function BearingRange2D.MeasureBearing');
    end

    function varargout = MeasureRange(varargin)
      % MEASURERANGE usage: MeasureRange(Pose2 pose, Point2 point) : returns double
      % Doxygen can be found at https://gtsam.org/doxygen/
      if length(varargin) == 2 && isa(varargin{1},'gtsam.Pose2') && isa(varargin{2},'double') && size(varargin{2},1)==2 && size(varargin{2},2)==1
        varargout{1} = gtsam_wrapper(1080, varargin{:});
        return
      end

      error('Arguments do not match any overload of function BearingRange2D.MeasureRange');
    end

  end
end
