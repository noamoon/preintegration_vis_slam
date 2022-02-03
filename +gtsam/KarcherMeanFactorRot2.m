%class KarcherMeanFactorRot2, see Doxygen page for details
%at https://gtsam.org/doxygen/
%
%-------Constructors-------
%KarcherMeanFactorRot2(KeyVector keys)
%
classdef KarcherMeanFactorRot2 < gtsam.NonlinearFactor
  properties
    ptr_gtsamKarcherMeanFactorRot2 = 0
  end
  methods
    function obj = KarcherMeanFactorRot2(varargin)
      if (nargin == 2 || (nargin == 3 && strcmp(varargin{3}, 'void'))) && isa(varargin{1}, 'uint64') && varargin{1} == uint64(5139824614673773682)
        if nargin == 2
          my_ptr = varargin{2};
        else
          my_ptr = gtsam_wrapper(2928, varargin{2});
        end
        base_ptr = gtsam_wrapper(2927, my_ptr);
      elseif nargin == 1 && isa(varargin{1},'gtsam.KeyVector')
        [ my_ptr, base_ptr ] = gtsam_wrapper(2929, varargin{1});
      else
        error('Arguments do not match any overload of gtsam.KarcherMeanFactorRot2 constructor');
      end
      obj = obj@gtsam.NonlinearFactor(uint64(5139824614673773682), base_ptr);
      obj.ptr_gtsamKarcherMeanFactorRot2 = my_ptr;
    end

    function delete(obj)
      gtsam_wrapper(2930, obj.ptr_gtsamKarcherMeanFactorRot2);
    end

    function display(obj), obj.print(''); end
    %DISPLAY Calls print on the object
    function disp(obj), obj.display; end
    %DISP Calls print on the object
  end

  methods(Static = true)
  end
end
