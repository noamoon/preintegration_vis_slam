%class SfmTrack, see Doxygen page for details
%at https://gtsam.org/doxygen/
%
%-------Constructors-------
%SfmTrack()
%SfmTrack(Point3 pt)
%
%-------Methods-------
%add_measurement(size_t idx, Point2 m) : returns void
%equals(SfmTrack expected, double tol) : returns bool
%measurement(size_t idx) : returns pair< size_t, Point2 >
%number_measurements() : returns size_t
%point3() : returns Point3
%siftIndex(size_t idx) : returns pair< size_t, size_t >
%
classdef SfmTrack < handle
  properties
    ptr_gtsamSfmTrack = 0
  end
  methods
    function obj = SfmTrack(varargin)
      if nargin == 2 && isa(varargin{1}, 'uint64') && varargin{1} == uint64(5139824614673773682)
        my_ptr = varargin{2};
        gtsam_wrapper(2878, my_ptr);
      elseif nargin == 0
        my_ptr = gtsam_wrapper(2879);
      elseif nargin == 1 && isa(varargin{1},'double') && size(varargin{1},1)==3 && size(varargin{1},2)==1
        my_ptr = gtsam_wrapper(2880, varargin{1});
      else
        error('Arguments do not match any overload of gtsam.SfmTrack constructor');
      end
      obj.ptr_gtsamSfmTrack = my_ptr;
    end

    function delete(obj)
      gtsam_wrapper(2881, obj.ptr_gtsamSfmTrack);
    end

    function display(obj), obj.print(''); end
    %DISPLAY Calls print on the object
    function disp(obj), obj.display; end
    %DISP Calls print on the object
    function varargout = add_measurement(this, varargin)
      % ADD_MEASUREMENT usage: add_measurement(size_t idx, Point2 m) : returns void
      % Doxygen can be found at https://gtsam.org/doxygen/
      if length(varargin) == 2 && isa(varargin{1},'numeric') && isa(varargin{2},'double') && size(varargin{2},1)==2 && size(varargin{2},2)==1
        gtsam_wrapper(2882, this, varargin{:});
        return
      end
      error('Arguments do not match any overload of function gtsam.SfmTrack.add_measurement');
    end

    function varargout = equals(this, varargin)
      % EQUALS usage: equals(SfmTrack expected, double tol) : returns bool
      % Doxygen can be found at https://gtsam.org/doxygen/
      if length(varargin) == 2 && isa(varargin{1},'gtsam.SfmTrack') && isa(varargin{2},'double')
        varargout{1} = gtsam_wrapper(2883, this, varargin{:});
        return
      end
      error('Arguments do not match any overload of function gtsam.SfmTrack.equals');
    end

    function varargout = measurement(this, varargin)
      % MEASUREMENT usage: measurement(size_t idx) : returns pair< size_t, Point2 >
      % Doxygen can be found at https://gtsam.org/doxygen/
      if length(varargin) == 1 && isa(varargin{1},'numeric')
        [ varargout{1} varargout{2} ] = gtsam_wrapper(2884, this, varargin{:});
        return
      end
      error('Arguments do not match any overload of function gtsam.SfmTrack.measurement');
    end

    function varargout = number_measurements(this, varargin)
      % NUMBER_MEASUREMENTS usage: number_measurements() : returns size_t
      % Doxygen can be found at https://gtsam.org/doxygen/
      if length(varargin) == 0
        varargout{1} = gtsam_wrapper(2885, this, varargin{:});
        return
      end
      error('Arguments do not match any overload of function gtsam.SfmTrack.number_measurements');
    end

    function varargout = point3(this, varargin)
      % POINT3 usage: point3() : returns Point3
      % Doxygen can be found at https://gtsam.org/doxygen/
      if length(varargin) == 0
        varargout{1} = gtsam_wrapper(2886, this, varargin{:});
        return
      end
      error('Arguments do not match any overload of function gtsam.SfmTrack.point3');
    end

    function varargout = string_serialize(this, varargin)
      % STRING_SERIALIZE usage: string_serialize() : returns string
      % Doxygen can be found at https://gtsam.org/doxygen/
      if length(varargin) == 0
        varargout{1} = gtsam_wrapper(2887, this, varargin{:});
      else
        error('Arguments do not match any overload of function gtsam.SfmTrack.string_serialize');
      end
    end

    function sobj = saveobj(obj)
      % SAVEOBJ Saves the object to a matlab-readable format
      sobj = obj.string_serialize();
    end
    function varargout = siftIndex(this, varargin)
      % SIFTINDEX usage: siftIndex(size_t idx) : returns pair< size_t, size_t >
      % Doxygen can be found at https://gtsam.org/doxygen/
      if length(varargin) == 1 && isa(varargin{1},'numeric')
        [ varargout{1} varargout{2} ] = gtsam_wrapper(2888, this, varargin{:});
        return
      end
      error('Arguments do not match any overload of function gtsam.SfmTrack.siftIndex');
    end

  end

  methods(Static = true)
    function varargout = string_deserialize(varargin)
      % STRING_DESERIALIZE usage: string_deserialize() : returns gtsam.SfmTrack
      % Doxygen can be found at https://gtsam.org/doxygen/
      if length(varargin) == 1
        varargout{1} = gtsam_wrapper(2889, varargin{:});
      else
        error('Arguments do not match any overload of function gtsam.SfmTrack.string_deserialize');
      end
    end

    function obj = loadobj(sobj)
      % LOADOBJ Saves the object to a matlab-readable format
      obj = gtsam.SfmTrack.string_deserialize(sobj);
    end
  end
end
