%class MFAS, see Doxygen page for details
%at https://gtsam.org/doxygen/
%
%-------Constructors-------
%MFAS(BinaryMeasurementsUnit3 relativeTranslations, Unit3 projectionDirection)
%
%-------Methods-------
%computeOrdering() : returns gtsam::KeyVector
%computeOutlierWeights() : returns gtsam::KeyPairDoubleMap
%
classdef MFAS < handle
  properties
    ptr_gtsamMFAS = 0
  end
  methods
    function obj = MFAS(varargin)
      if nargin == 2 && isa(varargin{1}, 'uint64') && varargin{1} == uint64(5139824614673773682)
        my_ptr = varargin{2};
        gtsam_wrapper(3233, my_ptr);
      elseif nargin == 2 && isa(varargin{1},'gtsam.BinaryMeasurementsUnit3') && isa(varargin{2},'gtsam.Unit3')
        my_ptr = gtsam_wrapper(3234, varargin{1}, varargin{2});
      else
        error('Arguments do not match any overload of gtsam.MFAS constructor');
      end
      obj.ptr_gtsamMFAS = my_ptr;
    end

    function delete(obj)
      gtsam_wrapper(3235, obj.ptr_gtsamMFAS);
    end

    function display(obj), obj.print(''); end
    %DISPLAY Calls print on the object
    function disp(obj), obj.display; end
    %DISP Calls print on the object
    function varargout = computeOrdering(this, varargin)
      % COMPUTEORDERING usage: computeOrdering() : returns gtsam.KeyVector
      % Doxygen can be found at https://gtsam.org/doxygen/
      if length(varargin) == 0
        varargout{1} = gtsam_wrapper(3236, this, varargin{:});
        return
      end
      error('Arguments do not match any overload of function gtsam.MFAS.computeOrdering');
    end

    function varargout = computeOutlierWeights(this, varargin)
      % COMPUTEOUTLIERWEIGHTS usage: computeOutlierWeights() : returns gtsam.KeyPairDoubleMap
      % Doxygen can be found at https://gtsam.org/doxygen/
      if length(varargin) == 0
        varargout{1} = gtsam_wrapper(3237, this, varargin{:});
        return
      end
      error('Arguments do not match any overload of function gtsam.MFAS.computeOutlierWeights');
    end

  end

  methods(Static = true)
  end
end
