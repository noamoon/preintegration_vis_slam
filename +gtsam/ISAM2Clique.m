%class ISAM2Clique, see Doxygen page for details
%at https://gtsam.org/doxygen/
%
%-------Constructors-------
%ISAM2Clique()
%
%-------Methods-------
%gradientContribution() : returns Vector
%print(string s, KeyFormatter keyFormatter) : returns void
%
classdef ISAM2Clique < handle
  properties
    ptr_gtsamISAM2Clique = 0
  end
  methods
    function obj = ISAM2Clique(varargin)
      if nargin == 2 && isa(varargin{1}, 'uint64') && varargin{1} == uint64(5139824614673773682)
        my_ptr = varargin{2};
        gtsam_wrapper(1998, my_ptr);
      elseif nargin == 0
        my_ptr = gtsam_wrapper(1999);
      else
        error('Arguments do not match any overload of gtsam.ISAM2Clique constructor');
      end
      obj.ptr_gtsamISAM2Clique = my_ptr;
    end

    function delete(obj)
      gtsam_wrapper(2000, obj.ptr_gtsamISAM2Clique);
    end

    function display(obj), obj.print(''); end
    %DISPLAY Calls print on the object
    function disp(obj), obj.display; end
    %DISP Calls print on the object
    function varargout = gradientContribution(this, varargin)
      % GRADIENTCONTRIBUTION usage: gradientContribution() : returns Vector
      % Doxygen can be found at https://gtsam.org/doxygen/
      if length(varargin) == 0
        varargout{1} = gtsam_wrapper(2001, this, varargin{:});
        return
      end
      error('Arguments do not match any overload of function gtsam.ISAM2Clique.gradientContribution');
    end

    function varargout = print(this, varargin)
      % PRINT usage: print(string s, KeyFormatter keyFormatter) : returns void
      % Doxygen can be found at https://gtsam.org/doxygen/
      if length(varargin) == 2 && isa(varargin{1},'char') && isa(varargin{2},'gtsam.KeyFormatter')
        gtsam_wrapper(2002, this, varargin{:});
        return
      end
      % PRINT usage: print(string s) : returns void
      % Doxygen can be found at https://gtsam.org/doxygen/
      if length(varargin) == 1 && isa(varargin{1},'char')
        gtsam_wrapper(2003, this, varargin{:});
        return
      end
      % PRINT usage: print() : returns void
      % Doxygen can be found at https://gtsam.org/doxygen/
      if length(varargin) == 0
        gtsam_wrapper(2004, this, varargin{:});
        return
      end
      error('Arguments do not match any overload of function gtsam.ISAM2Clique.print');
    end

  end

  methods(Static = true)
  end
end
