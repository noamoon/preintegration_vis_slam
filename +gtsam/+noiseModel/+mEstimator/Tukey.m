%class Tukey, see Doxygen page for details
%at https://gtsam.org/doxygen/
%
%-------Constructors-------
%Tukey(double k)
%
%-------Methods-------
%loss(double error) : returns double
%weight(double error) : returns double
%
%-------Static Methods-------
%Create(double k) : returns gtsam::noiseModel::mEstimator::Tukey
%
%-------Serialization Interface-------
%string_serialize() : returns string
%string_deserialize(string serialized) : returns Tukey
%
classdef Tukey < gtsam.noiseModel.mEstimator.Base
  properties
    ptr_gtsamnoiseModelmEstimatorTukey = 0
  end
  methods
    function obj = Tukey(varargin)
      if (nargin == 2 || (nargin == 3 && strcmp(varargin{3}, 'void'))) && isa(varargin{1}, 'uint64') && varargin{1} == uint64(5139824614673773682)
        if nargin == 2
          my_ptr = varargin{2};
        else
          my_ptr = gtsam_wrapper(1188, varargin{2});
        end
        base_ptr = gtsam_wrapper(1187, my_ptr);
      elseif nargin == 1 && isa(varargin{1},'double')
        [ my_ptr, base_ptr ] = gtsam_wrapper(1189, varargin{1});
      else
        error('Arguments do not match any overload of gtsam.noiseModel.mEstimator.Tukey constructor');
      end
      obj = obj@gtsam.noiseModel.mEstimator.Base(uint64(5139824614673773682), base_ptr);
      obj.ptr_gtsamnoiseModelmEstimatorTukey = my_ptr;
    end

    function delete(obj)
      gtsam_wrapper(1190, obj.ptr_gtsamnoiseModelmEstimatorTukey);
    end

    function display(obj), obj.print(''); end
    %DISPLAY Calls print on the object
    function disp(obj), obj.display; end
    %DISP Calls print on the object
    function varargout = loss(this, varargin)
      % LOSS usage: loss(double error) : returns double
      % Doxygen can be found at https://gtsam.org/doxygen/
      if length(varargin) == 1 && isa(varargin{1},'double')
        varargout{1} = gtsam_wrapper(1191, this, varargin{:});
        return
      end
      error('Arguments do not match any overload of function gtsamnoiseModelmEstimator.Tukey.loss');
    end

    function varargout = weight(this, varargin)
      % WEIGHT usage: weight(double error) : returns double
      % Doxygen can be found at https://gtsam.org/doxygen/
      if length(varargin) == 1 && isa(varargin{1},'double')
        varargout{1} = gtsam_wrapper(1192, this, varargin{:});
        return
      end
      error('Arguments do not match any overload of function gtsamnoiseModelmEstimator.Tukey.weight');
    end

  end

  methods(Static = true)
    function varargout = Create(varargin)
      % CREATE usage: Create(double k) : returns gtsam.noiseModel.mEstimator.Tukey
      % Doxygen can be found at https://gtsam.org/doxygen/
      if length(varargin) == 1 && isa(varargin{1},'double')
        varargout{1} = gtsam_wrapper(1193, varargin{:});
        return
      end

      error('Arguments do not match any overload of function Tukey.Create');
    end

  end
end
