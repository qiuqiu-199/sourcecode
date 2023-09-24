.class final synthetic Lorg/sufficientlysecure/keychain/model/SubKey$$Lambda$0;
.super Ljava/lang/Object;

# interfaces
.implements Lorg/sufficientlysecure/keychain/KeysModel$Creator;


# static fields
.field static final $instance:Lorg/sufficientlysecure/keychain/KeysModel$Creator;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    new-instance v0, Lorg/sufficientlysecure/keychain/model/SubKey$$Lambda$0;

    invoke-direct {v0}, Lorg/sufficientlysecure/keychain/model/SubKey$$Lambda$0;-><init>()V

    sput-object v0, Lorg/sufficientlysecure/keychain/model/SubKey$$Lambda$0;->$instance:Lorg/sufficientlysecure/keychain/KeysModel$Creator;

    return-void

    const-string v1, "M_InsDal"

    const-string v2, "Lorg/sufficientlysecure/keychain/model/SubKey$$Lambda$0;---><clinit>()V"

    invoke-static/range {v1 .. v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
.end method

.method private constructor <init>()V
    .locals 3

    move-object/16 v0, p0

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    return-void

    const-string v1, "M_InsDal"

    const-string v2, "Lorg/sufficientlysecure/keychain/model/SubKey$$Lambda$0;---><init>()V"

    invoke-static/range {v1 .. v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
.end method


# virtual methods
.method public create(JJJLjava/lang/Integer;Ljava/lang/String;I[BZZZZZLorg/sufficientlysecure/keychain/pgp/CanonicalizedSecretKey$SecretKeyType;ZJLjava/lang/Long;)Lorg/sufficientlysecure/keychain/KeysModel;
    .locals 25

    move-object/16 v22, p0

    move-wide/16 v23, p1

    move-wide/16 p0, p3

    move-wide/16 p2, p5

    move-object/16 p4, p7

    move-object/16 p5, p8

    move/16 p6, p9

    move-object/16 p7, p10

    move/16 p8, p11

    move/16 p9, p12

    move/16 p10, p13

    move/16 p11, p14

    move/16 p12, p15

    move-object/16 p13, p16

    move/16 p14, p17

    move-wide/16 p15, p18

    move-object/16 p17, p20

    new-instance v21, Lorg/sufficientlysecure/keychain/model/AutoValue_SubKey;

    move-object/from16 v0, v21

    move-wide/from16 v1, v23

    move-wide/from16 v3, p0

    move-wide/from16 v5, p2

    move-object/from16 v7, p4

    move-object/from16 v8, p5

    move/from16 v9, p6

    move-object/from16 v10, p7

    move/from16 v11, p8

    move/from16 v12, p9

    move/from16 v13, p10

    move/from16 v14, p11

    move/from16 v15, p12

    move-object/from16 v16, p13

    move/from16 v17, p14

    move-wide/from16 v18, p15

    move-object/from16 v20, p17

    invoke-direct/range {v0 .. v20}, Lorg/sufficientlysecure/keychain/model/AutoValue_SubKey;-><init>(JJJLjava/lang/Integer;Ljava/lang/String;I[BZZZZZLorg/sufficientlysecure/keychain/pgp/CanonicalizedSecretKey$SecretKeyType;ZJLjava/lang/Long;)V

    check-cast v21, Lorg/sufficientlysecure/keychain/KeysModel;

    return-object v21

    const-string p18, "M_InsDal"

    const-string p19, "Lorg/sufficientlysecure/keychain/model/SubKey$$Lambda$0;--->create(JJJLjava/lang/Integer;Ljava/lang/String;I[BZZZZZLorg/sufficientlysecure/keychain/pgp/CanonicalizedSecretKey$SecretKeyType;ZJLjava/lang/Long;)Lorg/sufficientlysecure/keychain/KeysModel;"

    invoke-static/range {p18 .. p19}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
.end method
