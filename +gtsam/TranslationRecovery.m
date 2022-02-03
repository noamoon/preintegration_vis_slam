%class TranslationRecovery, see Doxygen page for details
%at https://gtsam.org/doxygen/
%
%-------Constructors-------
%TranslationRecovery(BinaryMeasurementsUnit3 relativeTranslations, LevenbergMarquardtParams lmParams)
%TranslationRecovery(BinaryMeasurementsUnit3 relativeTranslations)
%
%-------Methods-------
%run(double scale) : returns gtsam::Values
%run() : returns gtsam::Values
%
classdef TranslationRecovery < handle
  properties
    ptr_gtsamTranslationRecovery = 0
  end
  methods
    function obj = TranslationRecovery(varargin)
      if nargin == 2 && isa(varargin{1}, 'uint64') && varargin{1} == uint64(5139824614673773682)
        my_ptr = varargin{2};
        gtsam_wrapper(3238, my_ptr);
      elseif nargin == 2 && isa(varargin{1},'gtsam.BinaryMeasurementsUnit3') && isa(varargin{2},'gtsam.LevenbergMarquardtParams')
        my_ptr = gtsam_wrapper(3239, varargin{1}, varargin{2});
      elseif nargin == 1 && isa(varargin{1},'gtsam.BinaryMeasurementsUnit3')
        my_ptr = gtsam_wrapper(3240, varargin{1});
      else
        error('Arguments do not match any overload of gtsam.TranslationRecovery constructor');
      end
      obj.ptr_gtsamTranslationRecovery = my_ptr;
    end

    function delete(obj)
      gtsam_wrapper(3241, obj.ptr_gtsamTranslationRecovery);
    end

    function display(obj), obj.print(''); end
    %DISPLAY Calls print on the object
    function disp(obj), obj.display; end
    %DISP Calls print on the object
    function varargout = run(this, varargin)
      % RUN usage: run(double scale) : returns gtsam.Values
      % Doxygen can be found at https://gtsam.org/doxygen/
      if length(varargin) == 1 && isa(varargin{1},'double')
        varargout{1} = gtsam_wrapper(3242, this, varargin{:});
        return
      end
      % RUN usage: run() : returns gtsam.Values
      % Doxygen can be found at https://gtsam.org/doxygen/
      if length(varargin) == 0
        varargout{1} = gtsam_wrapper(3243, this, varargin{:});
        return
      end
      error('Arguments do not match any overload of function gtsam.TranslationRecovery.run');
    end

  end

  methods(Static = true)
  end
end
