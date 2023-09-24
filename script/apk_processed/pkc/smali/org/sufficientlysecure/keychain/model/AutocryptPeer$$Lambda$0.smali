.class final synthetic Lorg/sufficientlysecure/keychain/model/AutocryptPeer$$Lambda$0;
.super Ljava/lang/Object;

# interfaces
.implements Lorg/sufficientlysecure/keychain/AutocryptPeersModel$Creator;


# static fields
.field static final $instance:Lorg/sufficientlysecure/keychain/AutocryptPeersModel$Creator;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    new-instance v0, Lorg/sufficientlysecure/keychain/model/AutocryptPeer$$Lambda$0;

    invoke-direct {v0}, Lorg/sufficientlysecure/keychain/model/AutocryptPeer$$Lambda$0;-><init>()V

    sput-object v0, Lorg/sufficientlysecure/keychain/model/AutocryptPeer$$Lambda$0;->$instance:Lorg/sufficientlysecure/keychain/AutocryptPeersModel$Creator;

    return-void

    const-string v1, "M_InsDal"

    const-string v2, "Lorg/sufficientlysecure/keychain/model/AutocryptPeer$$Lambda$0;---><clinit>()V"

    invoke-static/range {v1 .. v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
.end method

.method private constructor <init>()V
    .locals 3

    move-object/16 v0, p0

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    return-void

    const-string v1, "M_InsDal"

    const-string v2, "Lorg/sufficientlysecure/keychain/model/AutocryptPeer$$Lambda$0;---><init>()V"

    invoke-static/range {v1 .. v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
.end method


# virtual methods
.method public create(Ljava/lang/String;Ljava/lang/String;Ljava/util/Date;Ljava/util/Date;ZLjava/lang/Long;Ljava/lang/Long;Ljava/util/Date;Lorg/sufficientlysecure/keychain/model/AutocryptPeer$GossipOrigin;)Lorg/sufficientlysecure/keychain/AutocryptPeersModel;
    .locals 14

    move-object/16 v11, p0

    move-object/16 v12, p1

    move-object/16 v13, p2

    move-object/16 p0, p3

    move-object/16 p1, p4

    move/16 p2, p5

    move-object/16 p3, p6

    move-object/16 p4, p7

    move-object/16 p5, p8

    move-object/16 p6, p9

    new-instance v10, Lorg/sufficientlysecure/keychain/model/AutoValue_AutocryptPeer;

    move-object v0, v10

    move-object v1, v12

    move-object v2, v13

    move-object v3, p0

    move-object v4, p1

    move/from16 v5, p2

    move-object/from16 v6, p3

    move-object/from16 v7, p4

    move-object/from16 v8, p5

    move-object/from16 v9, p6

    invoke-direct/range {v0 .. v9}, Lorg/sufficientlysecure/keychain/model/AutoValue_AutocryptPeer;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/util/Date;Ljava/util/Date;ZLjava/lang/Long;Ljava/lang/Long;Ljava/util/Date;Lorg/sufficientlysecure/keychain/model/AutocryptPeer$GossipOrigin;)V

    check-cast v10, Lorg/sufficientlysecure/keychain/AutocryptPeersModel;

    return-object v10

    const-string p7, "M_InsDal"

    const-string p8, "Lorg/sufficientlysecure/keychain/model/AutocryptPeer$$Lambda$0;--->create(Ljava/lang/String;Ljava/lang/String;Ljava/util/Date;Ljava/util/Date;ZLjava/lang/Long;Ljava/lang/Long;Ljava/util/Date;Lorg/sufficientlysecure/keychain/model/AutocryptPeer$GossipOrigin;)Lorg/sufficientlysecure/keychain/AutocryptPeersModel;"

    invoke-static/range {p7 .. p8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
.end method
