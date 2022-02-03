%class PoseTranslationPrior3D, see Doxygen page for details
%at https://gtsam.org/doxygen/
%
%-------Constructors-------
%PoseTranslationPrior3D(size_t key, Pose3 pose_z, Base noiseModel)
%
%-------Methods-------
%measured() : returns gtsam::Pose3::Translation
%
classdef PoseTranslationPrior3D < gtsam.NoiseModelFactor
  properties
    ptr_gtsamPoseTranslationPrior3D = 0
  end
  methods
    function obj = PoseTranslationPrior3D(varargin)
      if (nargin == 2 || (nargin == 3 && strcmp(varargin{3}, 'void'))) && isa(varargin{1}, 'uint64') && varargin{1} == uint64(5139824614673773682)
        if nargin == 2
          my_ptr = varargin{2};
        else
          my_ptr = gtsam_wrapper(3085, varargin{2});
        end
        base_ptr = gtsam_wrapper(3084, my_ptr);
      elseif nargin == 3 && isa(varargin{1},'numeric') && isa(varargin{2},'gtsam.Pose3') && isa(varargin{3},'gtsam.noiseModel.Base')
        [ my_ptr, base_ptr ] = gtsam_wrapper(3086, varargin{1}, varargin{2}, varargin{3});
      else
        error('Arguments do not match any overload of gtsam.PoseTranslationPrior3D constructor');
      end
      obj = obj@gtsam.NoiseModelFactor(uint64(5139824614673773682), base_ptr);
      obj.ptr_gtsamPoseTranslationPrior3D = my_ptr;
    end

    function delete(obj)
      gtsam_wrapper(3087, obj.ptr_gtsamPoseTranslationPrior3D);
    end

    function display(obj), obj.print(''); end
    %DISPLAY Calls print on the object
    function disp(obj), obj.display; end
    %DISP Calls print on the object
    function varargout = measured(this, varargin)
      % MEASURED usage: measured() : returns gtsam.Pose3::Translation
      % Doxygen can be found at https://gtsam.org/doxygen/
      if length(varargin) == 0
        varargout{1} = gtsam_wrapper(3088, this, varargin{:});
        return
      end
      error('Arguments do not match any overload of function gtsam.PoseTranslationPrior3D.measured');
    end

    function varargout = string_serialize(this, varargin)
      % STRING_SERIALIZE usage: string_serialize() : returns string
      % Doxygen can be found at https://gtsam.org/doxygen/
      if length(varargin) == 0
        varargout{1} = gtsam_wrapper(3089, this, varargin{:});
      else
        error('Arguments do not match any overload of function gtsam.PoseTranslationPrior3D.string_serialize');
      end
    end

    function sobj = saveobj(obj)
      % SAVEOBJ Saves the object to a matlab-readable format
      sobj = obj.string_serialize();
    end
  end

  methods(Static = true)
    function varargout = string_deserialize(varargin)
      % STRING_DESERIALIZE usage: string_deserialize() : returns gtsam.PoseTranslationPrior3D
      % Doxygen can be found at https://gtsam.org/doxygen/
      if length(varargin) == 1
        varargout{1} = gtsam_wrapper(3090, varargin{:});
      else
        error('Arguments do not match any overload of function gtsam.PoseTranslationPrior3D.string_deserialize');
      end
    end

    function obj = loadobj(sobj)
      % LOADOBJ Saves the object to a matlab-readable format
      obj = gtsam.PoseTranslationPrior3D.string_deserialize(sobj);
    end
  end
end
