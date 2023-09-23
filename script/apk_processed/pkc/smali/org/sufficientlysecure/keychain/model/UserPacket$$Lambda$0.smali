.class final synthetic Lorg/sufficientlysecure/keychain/model/UserPacket$$Lambda$0;
.super Ljava/lang/Object;

# interfaces
.implements Lorg/sufficientlysecure/keychain/UserPacketsModel$Creator;


# static fields
.field static final $instance:Lorg/sufficientlysecure/keychain/UserPacketsModel$Creator;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    new-instance v0, Lorg/sufficientlysecure/keychain/model/UserPacket$$Lambda$0;

    invoke-direct {v0}, Lorg/sufficientlysecure/keychain/model/UserPacket$$Lambda$0;-><init>()V

    sput-object v0, Lorg/sufficientlysecure/keychain/model/UserPacket$$Lambda$0;->$instance:Lorg/sufficientlysecure/keychain/UserPacketsModel$Creator;

    return-void

    const-string v1, "M_InsDal"

    const-string v2, "Lorg/sufficientlysecure/keychain/model/UserPacket$$Lambda$0;---><clinit>()V"

    invoke-static/range {v1 .. v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
.end method

.method private constructor <init>()V
    .locals 3

    move-object/16 v0, p0

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    return-void

    const-string v1, "M_InsDal"

    const-string v2, "Lorg/sufficientlysecure/keychain/model/UserPacket$$Lambda$0;---><init>()V"

    invoke-static/range {v1 .. v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
.end method


# virtual methods
.method public create(JILjava/lang/Long;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[BZZ)Lorg/sufficientlysecure/keychain/UserPacketsModel;
    .locals 16

    move-object/16 v13, p0

    move-wide/16 v14, p1

    move/16 p0, p3

    move-object/16 p1, p4

    move-object/16 p2, p5

    move-object/16 p3, p6

    move-object/16 p4, p7

    move-object/16 p5, p8

    move-object/16 p6, p9

    move/16 p7, p10

    move/16 p8, p11

    new-instance v12, Lorg/sufficientlysecure/keychain/model/AutoValue_UserPacket;

    move-object v0, v12

    move-wide v1, v14

    move/from16 v3, p0

    move-object/from16 v4, p1

    move-object/from16 v5, p2

    move-object/from16 v6, p3

    move-object/from16 v7, p4

    move-object/from16 v8, p5

    move-object/from16 v9, p6

    move/from16 v10, p7

    move/from16 v11, p8

    invoke-direct/range {v0 .. v11}, Lorg/sufficientlysecure/keychain/model/AutoValue_UserPacket;-><init>(JILjava/lang/Long;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[BZZ)V

    check-cast v12, Lorg/sufficientlysecure/keychain/UserPacketsModel;

    return-object v12

    const-string p9, "M_InsDal"

    const-string p10, "Lorg/sufficientlysecure/keychain/model/UserPacket$$Lambda$0;--->create(JILjava/lang/Long;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[BZZ)Lorg/sufficientlysecure/keychain/UserPacketsModel;"

    invoke-static/range {p9 .. p10}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
.end method
