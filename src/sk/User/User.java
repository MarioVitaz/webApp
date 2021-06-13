package sk.User;

public class User {

    private Integer id, telefon;
    private String meno, priezvisko, email, heslo, pohlavie,meno1,meno2,priezvisko2,priezvisko1;
    private int id_skupina,body, id_registration,id_player, id_player2;
private  String typeUser;


public User(Integer id, String typeUser){
    this.id = id;
    this.typeUser = typeUser;
}

public User(String meno1,String meno2,String priezvisko1,String priezvisko2){
    this.meno1 = meno1;
    this.priezvisko1 = priezvisko1;
    this.meno2 = meno2;
    this.priezvisko2 = priezvisko2;
}

    public User(Integer id, Integer telefon, String meno, String priezvisko, String email, String pohlavie, int body) {
        this.id = id;
        this.telefon = telefon;
        this.meno = meno;
        this.priezvisko = priezvisko;
        this.email = email;
        this.pohlavie = pohlavie;
        this.body = body;
    }

    public User(String meno, String priezvisko, String email, String heslo, Integer telefon, String pohlavie) {
        this.telefon = telefon;
        this.meno = meno;
        this.priezvisko = priezvisko;
        this.email = email;
        this.heslo = heslo;
        this.pohlavie = pohlavie;
    }

    public User(Integer id, Integer telefon, String meno, String priezvisko, String email, String heslo, String pohlavie, int id_skupina, int body) {
        this.id = id;
        this.telefon = telefon;
        this.meno = meno;
        this.priezvisko = priezvisko;
        this.email = email;
        this.heslo = heslo;
        this.pohlavie = pohlavie;
        this.id_skupina = id_skupina;
        this.body = body;
    }

    public User(Integer id, Integer telefon, String meno, String priezvisko, String email, String heslo, String pohlavie, int body) {
        this.id = id;
        this.telefon = telefon;
        this.meno = meno;
        this.priezvisko = priezvisko;
        this.email = email;
        this.heslo = heslo;
        this.pohlavie = pohlavie;
        this.body = body;
    }

    public User(Integer telefon, String meno, String priezvisko, String email, String heslo, String pohlavie, int id_skupina, int body) {
        this.telefon = telefon;
        this.meno = meno;
        this.priezvisko = priezvisko;
        this.email = email;
        this.heslo = heslo;
        this.pohlavie = pohlavie;
        this.id_skupina = id_skupina;
        this.body = body;
    }

    public User(String meno, String email, String heslo) {
        this.meno = meno;
        this.email = email;
        this.heslo = heslo;
    }

    public User(Integer telefon, String meno, String priezvisko, String email) {
        this.telefon = telefon;
        this.meno = meno;
        this.priezvisko = priezvisko;
        this.email = email;
    }

    public User(int id_player, int id_player2) {
        this.id_player = id_player;
        this.id_player2 = id_player2;
    }

    public User(String meno, String priezvisko) {
    }

    public String getMeno1() {
        return meno1;
    }

    public void setMeno1(String meno1) {
        this.meno1 = meno1;
    }

    public String getMeno2() {
        return meno2;
    }

    public void setMeno2(String meno2) {
        this.meno2 = meno2;
    }

    public String getPriezvisko2() {
        return priezvisko2;
    }

    public void setPriezvisko2(String priezvisko2) {
        this.priezvisko2 = priezvisko2;
    }

    public String getPriezvisko1() {
        return priezvisko1;
    }

    public void setPriezvisko1(String priezvisko1) {
        this.priezvisko1 = priezvisko1;
    }

    public int getId_registration() {
        return id_registration;
    }

    public void setId_registration(int id_registration) {
        this.id_registration = id_registration;
    }

    public int getId_player() {
        return id_player;
    }

    public void setId_player(int id_player) {
        this.id_player = id_player;
    }

    public int getId_player2() {
        return id_player2;
    }

    public void setId_player2(int id_player2) {
        this.id_player2 = id_player2;
    }

    public String getTypeUser() {
        return typeUser;
    }

    public void setTypeUser(String typeUser) {
        this.typeUser = typeUser;
    }

    public int getId_skupina() {
        return id_skupina;
    }

    public void setId_skupina(int id_skupina) {
        this.id_skupina = id_skupina;
    }

    public Integer getId() {
        return id;
    }

    public void setId(Integer id) {
        this.id = id;
    }

    public Integer getTelefon() {
        return telefon;
    }

    public void setTelefon(Integer telefon) {
        this.telefon = telefon;
    }

    public String getMeno() {
        return meno;
    }

    public void setMeno(String meno) {
        this.meno = meno;
    }

    public String getPriezvisko() {
        return priezvisko;
    }

    public void setPriezvisko(String priezvisko) {
        this.priezvisko = priezvisko;
    }

    public String getEmail() {
        return email;
    }

    public void setEmail(String email) {
        this.email = email;
    }

    public String getHeslo() {
        return heslo;
    }

    public void setHeslo(String heslo) {
        this.heslo = heslo;
    }

    public String getPohlavie() {
        return pohlavie;
    }

    public void setPohlavie(String pohlavie) {
        this.pohlavie = pohlavie;
    }

    public int getBody() {
        return body;
    }

    public void setBody(int body) {
        this.body = body;
    }
}
