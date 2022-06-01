public class Candidates {
    public string name;
    public string Gender;
    public static String companyName;

    public void printCandidate(){
        System.debug('Candidate NAme Is '+name + '('+Gender +')');
        System.debug('Company name is '+ companyName);
    }
    public static void printCandidateInfoSt(){
        System.debug('company name is '+ companyName);
        // System.debug('name = ' + name);
    }
}
