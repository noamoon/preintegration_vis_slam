%class Diagonal, see Doxygen page for details
%at https://gtsam.org/doxygen/
%
%-------Methods-------
%R() : returns Matrix
%invsigmas() : returns Vector
%precisions() : returns Vector
%sigmas() : returns Vector
%
%-------Static Methods-------
%Precisions(Vector precisions, bool smart) : returns gtsam::noiseModel::Diagonal
%Sigmas(Vector sigmas, bool smart) : returns gtsam::noiseModel::Diagonal
%Variances(Vector variances, bool smart) : returns gtsam::noiseModel::Diagonal
%
%-------Serialization Interface-------
%string_serialize() : returns string
%string_deserialize(string serialized) : returns Diagonal
%
classdef Diagonal < gtsam.noiseModel.Gaussian
  properties
    ptr_gtsamnoiseModelDiagonal = 0
  end
  methods
    function obj = Diagonal(varargin)
      if (nargin == 2 || (nargin == 3 && strcmp(varargin{3}, 'void'))) && isa(varargin{1}, 'uint64') && varargin{1} == uint64(5139824614673773682)
        if nargin == 2
          my_ptr = varargin{2};
        else
          my_ptr = gtsam_wrapper(1116, varargin{2});
        end
        base_ptr = gtsam_wrapper(1115, my_ptr);
      else
        error('Arguments do not match any overload of gtsam.noiseModel.Diagonal constructor');
      end
      obj = obj@gtsam.noiseModel.Gaussian(uint64(5139824614673773682), base_ptr);
      obj.ptr_gtsamnoiseModelDiagonal = my_ptr;
    end

    function delete(obj)
      gtsam_wrapper(1117, obj.ptr_gtsamnoiseModelDiagonal);
    end

    function display(obj), obj.print(''); end
    %DISPLAY Calls print on the object
    function disp(obj), obj.display; end
    %DISP Calls print on the object
    function varargout = R(this, varargin)
      % R usage: R() : returns Matrix
      % Doxygen can be found at https://gtsam.org/doxygen/
      if length(varargin) == 0
        varargout{1} = gtsam_wrapper(1118, this, varargin{:});
        return
      end
      error('Arguments do not match any overload of function gtsamnoiseModel.Diagonal.R');
    end

    function varargout = invsigmas(this, varargin)
      % INVSIGMAS usage: invsigmas() : returns Vector
      % Doxygen can be found at https://gtsam.org/doxygen/
      if length(varargin) == 0
        varargout{1} = gtsam_wrapper(1119, this, varargin{:});
        return
      end
      error('Arguments do not match any overload of function gtsamnoiseModel.Diagonal.invsigmas');
    end

    function varargout = precisions(this, varargin)
      % PRECISIONS usage: precisions() : returns Vector
      % Doxygen can be found at https://gtsam.org/doxygen/
      if length(varargin) == 0
        varargout{1} = gtsam_wrapper(1120, this, varargin{:});
        return
      end
      error('Arguments do not match any overload of function gtsamnoiseModel.Diagonal.precisions');
    end

    function varargout = sigmas(this, varargin)
      % SIGMAS usage: sigmas() : returns Vector
      % Doxygen can be found at https://gtsam.org/doxygen/
      if length(varargin) == 0
        varargout{1} = gtsam_wrapper(1121, this, varargin{:});
        return
      end
      error('Arguments do not match any overload of function gtsamnoiseModel.Diagonal.sigmas');
    end

  end

  methods(Static = true)
    function varargout = Precisions(varargin)
      % PRECISIONS usage: Precisions(Vector precisions, bool smart) : returns gtsam.noiseModel.Diagonal
      % Doxygen can be found at https://gtsam.org/doxygen/
      if length(varargin) == 2 && isa(varargin{1},'double') && size(varargin{1},2)==1 && isa(varargin{2},'logical')
        varargout{1} = gtsam_wrapper(1122, varargin{:});
        return
      end

      % PRECISIONS usage: Precisions(Vector precisions) : returns gtsam.noiseModel.Diagonal
      % Doxygen can be found at https://gtsam.org/doxygen/
      if length(varargin) == 1 && isa(varargin{1},'double') && size(varargin{1},2)==1
        varargout{1} = gtsam_wrapper(1123, varargin{:});
        return
      end

      error('Arguments do not match any overload of function Diagonal.Precisions');
    end

    function varargout = Sigmas(varargin)
      % SIGMAS usage: Sigmas(Vector sigmas, bool smart) : returns gtsam.noiseModel.Diagonal
      % Doxygen can be found at https://gtsam.org/doxygen/
      if length(varargin) == 2 && isa(varargin{1},'double') && size(varargin{1},2)==1 && isa(varargin{2},'logical')
        varargout{1} = gtsam_wrapper(1124, varargin{:});
        return
      end

      % SIGMAS usage: Sigmas(Vector sigmas) : returns gtsam.noiseModel.Diagonal
      % Doxygen can be found at https://gtsam.org/doxygen/
      if length(varargin) == 1 && isa(varargin{1},'double') && size(varargin{1},2)==1
        varargout{1} = gtsam_wrapper(1125, varargin{:});
        return
      end

      error('Arguments do not match any overload of function Diagonal.Sigmas');
    end

    function varargout = Variances(varargin)
      % VARIANCES usage: Variances(Vector variances, bool smart) : returns gtsam.noiseModel.Diagonal
      % Doxygen can be found at https://gtsam.org/doxygen/
      if length(varargin) == 2 && isa(varargin{1},'double') && size(varargin{1},2)==1 && isa(varargin{2},'logical')
        varargout{1} = gtsam_wrapper(1126, varargin{:});
        return
      end

      % VARIANCES usage: Variances(Vector variances) : returns gtsam.noiseModel.Diagonal
      % Doxygen can be found at https://gtsam.org/doxygen/
      if length(varargin) == 1 && isa(varargin{1},'double') && size(varargin{1},2)==1
        varargout{1} = gtsam_wrapper(1127, varargin{:});
        return
      end

      error('Arguments do not match any overload of function Diagonal.Variances');
    end

  end
end
