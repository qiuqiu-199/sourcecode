.class final synthetic Lorg/sufficientlysecure/keychain/model/AutocryptPeer$$Lambda$1;
.super Ljava/lang/Object;

# interfaces
.implements Lorg/sufficientlysecure/keychain/AutocryptPeersModel$SelectAutocryptKeyStatusCreator;


# static fields
.field static final $instance:Lorg/sufficientlysecure/keychain/AutocryptPeersModel$SelectAutocryptKeyStatusCreator;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    new-instance v0, Lorg/sufficientlysecure/keychain/model/AutocryptPeer$$Lambda$1;

    invoke-direct {v0}, Lorg/sufficientlysecure/keychain/model/AutocryptPeer$$Lambda$1;-><init>()V

    sput-object v0, Lorg/sufficientlysecure/keychain/model/AutocryptPeer$$Lambda$1;->$instance:Lorg/sufficientlysecure/keychain/AutocryptPeersModel$SelectAutocryptKeyStatusCreator;

    return-void

    const-string v1, "M_InsDal"

    const-string v2, "Lorg/sufficientlysecure/keychain/model/AutocryptPeer$$Lambda$1;---><clinit>()V"

    invoke-static/range {v1 .. v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
.end method

.method private constructor <init>()V
    .locals 3

    move-object/16 v0, p0

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    return-void

    const-string v1, "M_InsDal"

    const-string v2, "Lorg/sufficientlysecure/keychain/model/AutocryptPeer$$Lambda$1;---><init>()V"

    invoke-static/range {v1 .. v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
.end method


# virtual methods
.method public create(Lorg/sufficientlysecure/keychain/AutocryptPeersModel;JJLjava/lang/Boolean;Ljava/lang/Boolean;JJ)Lorg/sufficientlysecure/keychain/AutocryptPeersModel$SelectAutocryptKeyStatusModel;
    .locals 16

    move-object/16 v13, p0

    move-object/16 v14, p1

    move-wide/16 v15, p2

    move-wide/16 p1, p4

    move-object/16 p3, p6

    move-object/16 p4, p7

    move-wide/16 p5, p8

    move-wide/16 p7, p10

    new-instance v12, Lorg/sufficientlysecure/keychain/model/AutoValue_AutocryptPeer_AutocryptKeyStatus;

    move-object v1, v14

    check-cast v1, Lorg/sufficientlysecure/keychain/model/AutocryptPeer;

    move-object v0, v12

    move-wide v2, v15

    move-wide/from16 v4, p1

    move-object/from16 v6, p3

    move-object/from16 v7, p4

    move-wide/from16 v8, p5

    move-wide/from16 v10, p7

    invoke-direct/range {v0 .. v11}, Lorg/sufficientlysecure/keychain/model/AutoValue_AutocryptPeer_AutocryptKeyStatus;-><init>(Lorg/sufficientlysecure/keychain/model/AutocryptPeer;JJLjava/lang/Boolean;Ljava/lang/Boolean;JJ)V

    check-cast v12, Lorg/sufficientlysecure/keychain/AutocryptPeersModel$SelectAutocryptKeyStatusModel;

    return-object v12

    const-string p9, "M_InsDal"

    const-string p10, "Lorg/sufficientlysecure/keychain/model/AutocryptPeer$$Lambda$1;--->create(Lorg/sufficientlysecure/keychain/AutocryptPeersModel;JJLjava/lang/Boolean;Ljava/lang/Boolean;JJ)Lorg/sufficientlysecure/keychain/AutocryptPeersModel$SelectAutocryptKeyStatusModel;"

    invoke-static/range {p9 .. p10}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
.end method
