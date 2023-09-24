.class final synthetic Lorg/sufficientlysecure/keychain/model/SubKey$$Lambda$1;
.super Ljava/lang/Object;

# interfaces
.implements Lorg/sufficientlysecure/keychain/KeysModel$UnifiedKeyViewCreator;


# static fields
.field static final $instance:Lorg/sufficientlysecure/keychain/KeysModel$UnifiedKeyViewCreator;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    new-instance v0, Lorg/sufficientlysecure/keychain/model/SubKey$$Lambda$1;

    invoke-direct {v0}, Lorg/sufficientlysecure/keychain/model/SubKey$$Lambda$1;-><init>()V

    sput-object v0, Lorg/sufficientlysecure/keychain/model/SubKey$$Lambda$1;->$instance:Lorg/sufficientlysecure/keychain/KeysModel$UnifiedKeyViewCreator;

    return-void

    const-string v1, "M_InsDal"

    const-string v2, "Lorg/sufficientlysecure/keychain/model/SubKey$$Lambda$1;---><clinit>()V"

    invoke-static/range {v1 .. v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
.end method

.method private constructor <init>()V
    .locals 3

    move-object/16 v0, p0

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    return-void

    const-string v1, "M_InsDal"

    const-string v2, "Lorg/sufficientlysecure/keychain/model/SubKey$$Lambda$1;---><init>()V"

    invoke-static/range {v1 .. v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
.end method


# virtual methods
.method public create(J[BJLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;JLjava/lang/Long;ZZZLorg/sufficientlysecure/keychain/pgp/CanonicalizedKeyRing$VerificationStatus;JJJJJLjava/lang/String;Ljava/lang/String;)Lorg/sufficientlysecure/keychain/KeysModel$UnifiedKeyViewModel;
    .locals 33

    move-object/16 v30, p0

    move-wide/16 v31, p1

    move-object/16 p0, p3

    move-wide/16 p1, p4

    move-object/16 p3, p6

    move-object/16 p4, p7

    move-object/16 p5, p8

    move-object/16 p6, p9

    move-wide/16 p7, p10

    move-object/16 p9, p12

    move/16 p10, p13

    move/16 p11, p14

    move/16 p12, p15

    move-object/16 p13, p16

    move-wide/16 p14, p17

    move-wide/16 p16, p19

    move-wide/16 p18, p21

    move-wide/16 p20, p23

    move-wide/16 p22, p25

    move-object/16 p24, p27

    move-object/16 p25, p28

    new-instance v29, Lorg/sufficientlysecure/keychain/model/AutoValue_SubKey_UnifiedKeyInfo;

    move-object/from16 v0, v29

    move-wide/from16 v1, v31

    move-object/from16 v3, p0

    move-wide/from16 v4, p1

    move-object/from16 v6, p3

    move-object/from16 v7, p4

    move-object/from16 v8, p5

    move-object/from16 v9, p6

    move-wide/from16 v10, p7

    move-object/from16 v12, p9

    move/from16 v13, p10

    move/from16 v14, p11

    move/from16 v15, p12

    move-object/from16 v16, p13

    move-wide/from16 v17, p14

    move-wide/from16 v19, p16

    move-wide/from16 v21, p18

    move-wide/from16 v23, p20

    move-wide/from16 v25, p22

    move-object/from16 v27, p24

    move-object/from16 v28, p25

    invoke-direct/range {v0 .. v28}, Lorg/sufficientlysecure/keychain/model/AutoValue_SubKey_UnifiedKeyInfo;-><init>(J[BJLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;JLjava/lang/Long;ZZZLorg/sufficientlysecure/keychain/pgp/CanonicalizedKeyRing$VerificationStatus;JJJJJLjava/lang/String;Ljava/lang/String;)V

    check-cast v29, Lorg/sufficientlysecure/keychain/KeysModel$UnifiedKeyViewModel;

    return-object v29

    const-string p26, "M_InsDal"

    const-string p27, "Lorg/sufficientlysecure/keychain/model/SubKey$$Lambda$1;--->create(J[BJLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;JLjava/lang/Long;ZZZLorg/sufficientlysecure/keychain/pgp/CanonicalizedKeyRing$VerificationStatus;JJJJJLjava/lang/String;Ljava/lang/String;)Lorg/sufficientlysecure/keychain/KeysModel$UnifiedKeyViewModel;"

    invoke-static/range {p26 .. p27}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
.end method
