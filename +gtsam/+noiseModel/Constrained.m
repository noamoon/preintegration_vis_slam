%class Constrained, see Doxygen page for details
%at https://gtsam.org/doxygen/
%
%-------Methods-------
%unit() : returns gtsam::noiseModel::Constrained
%
%-------Static Methods-------
%All(size_t dim) : returns gtsam::noiseModel::Constrained
%All(size_t dim, double mu) : returns gtsam::noiseModel::Constrained
%MixedPrecisions(Vector mu, Vector precisions) : returns gtsam::noiseModel::Constrained
%MixedPrecisions(Vector precisions) : returns gtsam::noiseModel::Constrained
%MixedSigmas(Vector mu, Vector sigmas) : returns gtsam::noiseModel::Constrained
%MixedSigmas(double m, Vector sigmas) : returns gtsam::noiseModel::Constrained
%MixedVariances(Vector mu, Vector variances) : returns gtsam::noiseModel::Constrained
%MixedVariances(Vector variances) : returns gtsam::noiseModel::Constrained
%
%-------Serialization Interface-------
%string_serialize() : returns string
%string_deserialize(string serialized) : returns Constrained
%
classdef Constrained < gtsam.noiseModel.Diagonal
  properties
    ptr_gtsamnoiseModelConstrained = 0
  end
  methods
    function obj = Constrained(varargin)
      if (nargin == 2 || (nargin == 3 && strcmp(varargin{3}, 'void'))) && isa(varargin{1}, 'uint64') && varargin{1} == uint64(5139824614673773682)
        if nargin == 2
          my_ptr = varargin{2};
        else
          my_ptr = gtsam_wrapper(1129, varargin{2});
        end
        base_ptr = gtsam_wrapper(1128, my_ptr);
      else
        error('Arguments do not match any overload of gtsam.noiseModel.Constrained constructor');
      end
      obj = obj@gtsam.noiseModel.Diagonal(uint64(5139824614673773682), base_ptr);
      obj.ptr_gtsamnoiseModelConstrained = my_ptr;
    end

    function delete(obj)
      gtsam_wrapper(1130, obj.ptr_gtsamnoiseModelConstrained);
    end

    function display(obj), obj.print(''); end
    %DISPLAY Calls print on the object
    function disp(obj), obj.display; end
    %DISP Calls print on the object
    function varargout = unit(this, varargin)
      % UNIT usage: unit() : returns gtsam.noiseModel.Constrained
      % Doxygen can be found at https://gtsam.org/doxygen/
      if length(varargin) == 0
        varargout{1} = gtsam_wrapper(1131, this, varargin{:});
        return
      end
      error('Arguments do not match any overload of function gtsamnoiseModel.Constrained.unit');
    end

  end

  methods(Static = true)
    function varargout = All(varargin)
      % ALL usage: All(size_t dim) : returns gtsam.noiseModel.Constrained
      % Doxygen can be found at https://gtsam.org/doxygen/
      if length(varargin) == 1 && isa(varargin{1},'numeric')
        varargout{1} = gtsam_wrapper(1132, varargin{:});
        return
      end

      % ALL usage: All(size_t dim, double mu) : returns gtsam.noiseModel.Constrained
      % Doxygen can be found at https://gtsam.org/doxygen/
      if length(varargin) == 2 && isa(varargin{1},'numeric') && isa(varargin{2},'double')
        varargout{1} = gtsam_wrapper(1133, varargin{:});
        return
      end

      error('Arguments do not match any overload of function Constrained.All');
    end

    function varargout = MixedPrecisions(varargin)
      % MIXEDPRECISIONS usage: MixedPrecisions(Vector mu, Vector precisions) : returns gtsam.noiseModel.Constrained
      % Doxygen can be found at https://gtsam.org/doxygen/
      if length(varargin) == 2 && isa(varargin{1},'double') && size(varargin{1},2)==1 && isa(varargin{2},'double') && size(varargin{2},2)==1
        varargout{1} = gtsam_wrapper(1134, varargin{:});
        return
      end

      % MIXEDPRECISIONS usage: MixedPrecisions(Vector precisions) : returns gtsam.noiseModel.Constrained
      % Doxygen can be found at https://gtsam.org/doxygen/
      if length(varargin) == 1 && isa(varargin{1},'double') && size(varargin{1},2)==1
        varargout{1} = gtsam_wrapper(1135, varargin{:});
        return
      end

      error('Arguments do not match any overload of function Constrained.MixedPrecisions');
    end

    function varargout = MixedSigmas(varargin)
      % MIXEDSIGMAS usage: MixedSigmas(Vector mu, Vector sigmas) : returns gtsam.noiseModel.Constrained
      % Doxygen can be found at https://gtsam.org/doxygen/
      if length(varargin) == 2 && isa(varargin{1},'double') && size(varargin{1},2)==1 && isa(varargin{2},'double') && size(varargin{2},2)==1
        varargout{1} = gtsam_wrapper(1136, varargin{:});
        return
      end

      % MIXEDSIGMAS usage: MixedSigmas(double m, Vector sigmas) : returns gtsam.noiseModel.Constrained
      % Doxygen can be found at https://gtsam.org/doxygen/
      if length(varargin) == 2 && isa(varargin{1},'double') && isa(varargin{2},'double') && size(varargin{2},2)==1
        varargout{1} = gtsam_wrapper(1137, varargin{:});
        return
      end

      error('Arguments do not match any overload of function Constrained.MixedSigmas');
    end

    function varargout = MixedVariances(varargin)
      % MIXEDVARIANCES usage: MixedVariances(Vector mu, Vector variances) : returns gtsam.noiseModel.Constrained
      % Doxygen can be found at https://gtsam.org/doxygen/
      if length(varargin) == 2 && isa(varargin{1},'double') && size(varargin{1},2)==1 && isa(varargin{2},'double') && size(varargin{2},2)==1
        varargout{1} = gtsam_wrapper(1138, varargin{:});
        return
      end

      % MIXEDVARIANCES usage: MixedVariances(Vector variances) : returns gtsam.noiseModel.Constrained
      % Doxygen can be found at https://gtsam.org/doxygen/
      if length(varargin) == 1 && isa(varargin{1},'double') && size(varargin{1},2)==1
        varargout{1} = gtsam_wrapper(1139, varargin{:});
        return
      end

      error('Arguments do not match any overload of function Constrained.MixedVariances');
    end

  end
end
