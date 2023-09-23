.class final synthetic Lorg/sufficientlysecure/keychain/model/UserPacket$$Lambda$1;
.super Ljava/lang/Object;

# interfaces
.implements Lorg/sufficientlysecure/keychain/UserPacketsModel$SelectUserIdsByMasterKeyIdCreator;


# static fields
.field static final $instance:Lorg/sufficientlysecure/keychain/UserPacketsModel$SelectUserIdsByMasterKeyIdCreator;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    new-instance v0, Lorg/sufficientlysecure/keychain/model/UserPacket$$Lambda$1;

    invoke-direct {v0}, Lorg/sufficientlysecure/keychain/model/UserPacket$$Lambda$1;-><init>()V

    sput-object v0, Lorg/sufficientlysecure/keychain/model/UserPacket$$Lambda$1;->$instance:Lorg/sufficientlysecure/keychain/UserPacketsModel$SelectUserIdsByMasterKeyIdCreator;

    return-void

    const-string v1, "M_InsDal"

    const-string v2, "Lorg/sufficientlysecure/keychain/model/UserPacket$$Lambda$1;---><clinit>()V"

    invoke-static/range {v1 .. v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
.end method

.method private constructor <init>()V
    .locals 3

    move-object/16 v0, p0

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    return-void

    const-string v1, "M_InsDal"

    const-string v2, "Lorg/sufficientlysecure/keychain/model/UserPacket$$Lambda$1;---><init>()V"

    invoke-static/range {v1 .. v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
.end method


# virtual methods
.method public create(JILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZZLjava/lang/Long;)Lorg/sufficientlysecure/keychain/UserPacketsModel$SelectUserIdsByMasterKeyIdModel;
    .locals 15

    move-object/16 v12, p0

    move-wide/16 v13, p1

    move/16 p0, p3

    move-object/16 p1, p4

    move-object/16 p2, p5

    move-object/16 p3, p6

    move-object/16 p4, p7

    move/16 p5, p8

    move/16 p6, p9

    move-object/16 p7, p10

    new-instance v11, Lorg/sufficientlysecure/keychain/model/AutoValue_UserPacket_UserId;

    move-object v0, v11

    move-wide v1, v13

    move v3, p0

    move-object/from16 v4, p1

    move-object/from16 v5, p2

    move-object/from16 v6, p3

    move-object/from16 v7, p4

    move/from16 v8, p5

    move/from16 v9, p6

    move-object/from16 v10, p7

    invoke-direct/range {v0 .. v10}, Lorg/sufficientlysecure/keychain/model/AutoValue_UserPacket_UserId;-><init>(JILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZZLjava/lang/Long;)V

    check-cast v11, Lorg/sufficientlysecure/keychain/UserPacketsModel$SelectUserIdsByMasterKeyIdModel;

    return-object v11

    const-string p8, "M_InsDal"

    const-string p9, "Lorg/sufficientlysecure/keychain/model/UserPacket$$Lambda$1;--->create(JILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZZLjava/lang/Long;)Lorg/sufficientlysecure/keychain/UserPacketsModel$SelectUserIdsByMasterKeyIdModel;"

    invoke-static/range {p8 .. p9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
.end method
