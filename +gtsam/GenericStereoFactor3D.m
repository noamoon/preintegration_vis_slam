%class GenericStereoFactor3D, see Doxygen page for details
%at https://gtsam.org/doxygen/
%
%-------Constructors-------
%GenericStereoFactor3D(StereoPoint2 measured, Base noiseModel, size_t poseKey, size_t landmarkKey, Cal3_S2Stereo K)
%
%-------Methods-------
%calibration() : returns gtsam::Cal3_S2Stereo
%measured() : returns gtsam::StereoPoint2
%
classdef GenericStereoFactor3D < gtsam.NoiseModelFactor
  properties
    ptr_gtsamGenericStereoFactor3D = 0
  end
  methods
    function obj = GenericStereoFactor3D(varargin)
      if (nargin == 2 || (nargin == 3 && strcmp(varargin{3}, 'void'))) && isa(varargin{1}, 'uint64') && varargin{1} == uint64(5139824614673773682)
        if nargin == 2
          my_ptr = varargin{2};
        else
          my_ptr = gtsam_wrapper(3070, varargin{2});
        end
        base_ptr = gtsam_wrapper(3069, my_ptr);
      elseif nargin == 5 && isa(varargin{1},'gtsam.StereoPoint2') && isa(varargin{2},'gtsam.noiseModel.Base') && isa(varargin{3},'numeric') && isa(varargin{4},'numeric') && isa(varargin{5},'gtsam.Cal3_S2Stereo')
        [ my_ptr, base_ptr ] = gtsam_wrapper(3071, varargin{1}, varargin{2}, varargin{3}, varargin{4}, varargin{5});
      else
        error('Arguments do not match any overload of gtsam.GenericStereoFactor3D constructor');
      end
      obj = obj@gtsam.NoiseModelFactor(uint64(5139824614673773682), base_ptr);
      obj.ptr_gtsamGenericStereoFactor3D = my_ptr;
    end

    function delete(obj)
      gtsam_wrapper(3072, obj.ptr_gtsamGenericStereoFactor3D);
    end

    function display(obj), obj.print(''); end
    %DISPLAY Calls print on the object
    function disp(obj), obj.display; end
    %DISP Calls print on the object
    function varargout = calibration(this, varargin)
      % CALIBRATION usage: calibration() : returns gtsam.Cal3_S2Stereo
      % Doxygen can be found at https://gtsam.org/doxygen/
      if length(varargin) == 0
        varargout{1} = gtsam_wrapper(3073, this, varargin{:});
        return
      end
      error('Arguments do not match any overload of function gtsam.GenericStereoFactor3D.calibration');
    end

    function varargout = measured(this, varargin)
      % MEASURED usage: measured() : returns gtsam.StereoPoint2
      % Doxygen can be found at https://gtsam.org/doxygen/
      if length(varargin) == 0
        varargout{1} = gtsam_wrapper(3074, this, varargin{:});
        return
      end
      error('Arguments do not match any overload of function gtsam.GenericStereoFactor3D.measured');
    end

    function varargout = string_serialize(this, varargin)
      % STRING_SERIALIZE usage: string_serialize() : returns string
      % Doxygen can be found at https://gtsam.org/doxygen/
      if length(varargin) == 0
        varargout{1} = gtsam_wrapper(3075, this, varargin{:});
      else
        error('Arguments do not match any overload of function gtsam.GenericStereoFactor3D.string_serialize');
      end
    end

    function sobj = saveobj(obj)
      % SAVEOBJ Saves the object to a matlab-readable format
      sobj = obj.string_serialize();
    end
  end

  methods(Static = true)
    function varargout = string_deserialize(varargin)
      % STRING_DESERIALIZE usage: string_deserialize() : returns gtsam.GenericStereoFactor3D
      % Doxygen can be found at https://gtsam.org/doxygen/
      if length(varargin) == 1
        varargout{1} = gtsam_wrapper(3076, varargin{:});
      else
        error('Arguments do not match any overload of function gtsam.GenericStereoFactor3D.string_deserialize');
      end
    end

    function obj = loadobj(sobj)
      % LOADOBJ Saves the object to a matlab-readable format
      obj = gtsam.GenericStereoFactor3D.string_deserialize(sobj);
    end
  end
end
