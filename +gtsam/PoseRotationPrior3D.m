%class PoseRotationPrior3D, see Doxygen page for details
%at https://gtsam.org/doxygen/
%
%-------Constructors-------
%PoseRotationPrior3D(size_t key, Pose3 pose_z, Base noiseModel)
%
%-------Methods-------
%measured() : returns gtsam::Pose3::Rotation
%
classdef PoseRotationPrior3D < gtsam.NoiseModelFactor
  properties
    ptr_gtsamPoseRotationPrior3D = 0
  end
  methods
    function obj = PoseRotationPrior3D(varargin)
      if (nargin == 2 || (nargin == 3 && strcmp(varargin{3}, 'void'))) && isa(varargin{1}, 'uint64') && varargin{1} == uint64(5139824614673773682)
        if nargin == 2
          my_ptr = varargin{2};
        else
          my_ptr = gtsam_wrapper(3097, varargin{2});
        end
        base_ptr = gtsam_wrapper(3096, my_ptr);
      elseif nargin == 3 && isa(varargin{1},'numeric') && isa(varargin{2},'gtsam.Pose3') && isa(varargin{3},'gtsam.noiseModel.Base')
        [ my_ptr, base_ptr ] = gtsam_wrapper(3098, varargin{1}, varargin{2}, varargin{3});
      else
        error('Arguments do not match any overload of gtsam.PoseRotationPrior3D constructor');
      end
      obj = obj@gtsam.NoiseModelFactor(uint64(5139824614673773682), base_ptr);
      obj.ptr_gtsamPoseRotationPrior3D = my_ptr;
    end

    function delete(obj)
      gtsam_wrapper(3099, obj.ptr_gtsamPoseRotationPrior3D);
    end

    function display(obj), obj.print(''); end
    %DISPLAY Calls print on the object
    function disp(obj), obj.display; end
    %DISP Calls print on the object
    function varargout = measured(this, varargin)
      % MEASURED usage: measured() : returns gtsam.Pose3::Rotation
      % Doxygen can be found at https://gtsam.org/doxygen/
      if length(varargin) == 0
        varargout{1} = gtsam_wrapper(3100, this, varargin{:});
        return
      end
      error('Arguments do not match any overload of function gtsam.PoseRotationPrior3D.measured');
    end

  end

  methods(Static = true)
  end
end
