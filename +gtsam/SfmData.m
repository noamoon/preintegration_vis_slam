%class SfmData, see Doxygen page for details
%at https://gtsam.org/doxygen/
%
%-------Constructors-------
%SfmData()
%
%-------Methods-------
%add_camera(SfmCamera cam) : returns void
%add_track(SfmTrack t) : returns void
%camera(size_t idx) : returns gtsam::PinholeCamera<gtsam::Cal3Bundler>
%equals(SfmData expected, double tol) : returns bool
%number_cameras() : returns size_t
%number_tracks() : returns size_t
%track(size_t idx) : returns gtsam::SfmTrack
%
classdef SfmData < handle
  properties
    ptr_gtsamSfmData = 0
  end
  methods
    function obj = SfmData(varargin)
      if nargin == 2 && isa(varargin{1}, 'uint64') && varargin{1} == uint64(5139824614673773682)
        my_ptr = varargin{2};
        gtsam_wrapper(2890, my_ptr);
      elseif nargin == 0
        my_ptr = gtsam_wrapper(2891);
      else
        error('Arguments do not match any overload of gtsam.SfmData constructor');
      end
      obj.ptr_gtsamSfmData = my_ptr;
    end

    function delete(obj)
      gtsam_wrapper(2892, obj.ptr_gtsamSfmData);
    end

    function display(obj), obj.print(''); end
    %DISPLAY Calls print on the object
    function disp(obj), obj.display; end
    %DISP Calls print on the object
    function varargout = add_camera(this, varargin)
      % ADD_CAMERA usage: add_camera(SfmCamera cam) : returns void
      % Doxygen can be found at https://gtsam.org/doxygen/
      if length(varargin) == 1 && isa(varargin{1},'gtsam.SfmCamera')
        gtsam_wrapper(2893, this, varargin{:});
        return
      end
      error('Arguments do not match any overload of function gtsam.SfmData.add_camera');
    end

    function varargout = add_track(this, varargin)
      % ADD_TRACK usage: add_track(SfmTrack t) : returns void
      % Doxygen can be found at https://gtsam.org/doxygen/
      if length(varargin) == 1 && isa(varargin{1},'gtsam.SfmTrack')
        gtsam_wrapper(2894, this, varargin{:});
        return
      end
      error('Arguments do not match any overload of function gtsam.SfmData.add_track');
    end

    function varargout = camera(this, varargin)
      % CAMERA usage: camera(size_t idx) : returns gtsam.PinholeCameraCal3Bundler
      % Doxygen can be found at https://gtsam.org/doxygen/
      if length(varargin) == 1 && isa(varargin{1},'numeric')
        varargout{1} = gtsam_wrapper(2895, this, varargin{:});
        return
      end
      error('Arguments do not match any overload of function gtsam.SfmData.camera');
    end

    function varargout = equals(this, varargin)
      % EQUALS usage: equals(SfmData expected, double tol) : returns bool
      % Doxygen can be found at https://gtsam.org/doxygen/
      if length(varargin) == 2 && isa(varargin{1},'gtsam.SfmData') && isa(varargin{2},'double')
        varargout{1} = gtsam_wrapper(2896, this, varargin{:});
        return
      end
      error('Arguments do not match any overload of function gtsam.SfmData.equals');
    end

    function varargout = number_cameras(this, varargin)
      % NUMBER_CAMERAS usage: number_cameras() : returns size_t
      % Doxygen can be found at https://gtsam.org/doxygen/
      if length(varargin) == 0
        varargout{1} = gtsam_wrapper(2897, this, varargin{:});
        return
      end
      error('Arguments do not match any overload of function gtsam.SfmData.number_cameras');
    end

    function varargout = number_tracks(this, varargin)
      % NUMBER_TRACKS usage: number_tracks() : returns size_t
      % Doxygen can be found at https://gtsam.org/doxygen/
      if length(varargin) == 0
        varargout{1} = gtsam_wrapper(2898, this, varargin{:});
        return
      end
      error('Arguments do not match any overload of function gtsam.SfmData.number_tracks');
    end

    function varargout = string_serialize(this, varargin)
      % STRING_SERIALIZE usage: string_serialize() : returns string
      % Doxygen can be found at https://gtsam.org/doxygen/
      if length(varargin) == 0
        varargout{1} = gtsam_wrapper(2899, this, varargin{:});
      else
        error('Arguments do not match any overload of function gtsam.SfmData.string_serialize');
      end
    end

    function sobj = saveobj(obj)
      % SAVEOBJ Saves the object to a matlab-readable format
      sobj = obj.string_serialize();
    end
    function varargout = track(this, varargin)
      % TRACK usage: track(size_t idx) : returns gtsam.SfmTrack
      % Doxygen can be found at https://gtsam.org/doxygen/
      if length(varargin) == 1 && isa(varargin{1},'numeric')
        varargout{1} = gtsam_wrapper(2900, this, varargin{:});
        return
      end
      error('Arguments do not match any overload of function gtsam.SfmData.track');
    end

  end

  methods(Static = true)
    function varargout = string_deserialize(varargin)
      % STRING_DESERIALIZE usage: string_deserialize() : returns gtsam.SfmData
      % Doxygen can be found at https://gtsam.org/doxygen/
      if length(varargin) == 1
        varargout{1} = gtsam_wrapper(2901, varargin{:});
      else
        error('Arguments do not match any overload of function gtsam.SfmData.string_deserialize');
      end
    end

    function obj = loadobj(sobj)
      % LOADOBJ Saves the object to a matlab-readable format
      obj = gtsam.SfmData.string_deserialize(sobj);
    end
  end
end
