%class Welsch, see Doxygen page for details
%at https://gtsam.org/doxygen/
%
%-------Constructors-------
%Welsch(double k)
%
%-------Methods-------
%loss(double error) : returns double
%weight(double error) : returns double
%
%-------Static Methods-------
%Create(double k) : returns gtsam::noiseModel::mEstimator::Welsch
%
%-------Serialization Interface-------
%string_serialize() : returns string
%string_deserialize(string serialized) : returns Welsch
%
classdef Welsch < gtsam.noiseModel.mEstimator.Base
  properties
    ptr_gtsamnoiseModelmEstimatorWelsch = 0
  end
  methods
    function obj = Welsch(varargin)
      if (nargin == 2 || (nargin == 3 && strcmp(varargin{3}, 'void'))) && isa(varargin{1}, 'uint64') && varargin{1} == uint64(5139824614673773682)
        if nargin == 2
          my_ptr = varargin{2};
        else
          my_ptr = gtsam_wrapper(1195, varargin{2});
        end
        base_ptr = gtsam_wrapper(1194, my_ptr);
      elseif nargin == 1 && isa(varargin{1},'double')
        [ my_ptr, base_ptr ] = gtsam_wrapper(1196, varargin{1});
      else
        error('Arguments do not match any overload of gtsam.noiseModel.mEstimator.Welsch constructor');
      end
      obj = obj@gtsam.noiseModel.mEstimator.Base(uint64(5139824614673773682), base_ptr);
      obj.ptr_gtsamnoiseModelmEstimatorWelsch = my_ptr;
    end

    function delete(obj)
      gtsam_wrapper(1197, obj.ptr_gtsamnoiseModelmEstimatorWelsch);
    end

    function display(obj), obj.print(''); end
    %DISPLAY Calls print on the object
    function disp(obj), obj.display; end
    %DISP Calls print on the object
    function varargout = loss(this, varargin)
      % LOSS usage: loss(double error) : returns double
      % Doxygen can be found at https://gtsam.org/doxygen/
      if length(varargin) == 1 && isa(varargin{1},'double')
        varargout{1} = gtsam_wrapper(1198, this, varargin{:});
        return
      end
      error('Arguments do not match any overload of function gtsamnoiseModelmEstimator.Welsch.loss');
    end

    function varargout = weight(this, varargin)
      % WEIGHT usage: weight(double error) : returns double
      % Doxygen can be found at https://gtsam.org/doxygen/
      if length(varargin) == 1 && isa(varargin{1},'double')
        varargout{1} = gtsam_wrapper(1199, this, varargin{:});
        return
      end
      error('Arguments do not match any overload of function gtsamnoiseModelmEstimator.Welsch.weight');
    end

  end

  methods(Static = true)
    function varargout = Create(varargin)
      % CREATE usage: Create(double k) : returns gtsam.noiseModel.mEstimator.Welsch
      % Doxygen can be found at https://gtsam.org/doxygen/
      if length(varargin) == 1 && isa(varargin{1},'double')
        varargout{1} = gtsam_wrapper(1200, varargin{:});
        return
      end

      error('Arguments do not match any overload of function Welsch.Create');
    end

  end
end
