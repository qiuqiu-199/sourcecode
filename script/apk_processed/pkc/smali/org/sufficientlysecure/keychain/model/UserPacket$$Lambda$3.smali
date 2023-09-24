.class final synthetic Lorg/sufficientlysecure/keychain/model/UserPacket$$Lambda$3;
.super Ljava/lang/Object;

# interfaces
.implements Lorg/sufficientlysecure/keychain/UserPacketsModel$UidStatusCreator;


# static fields
.field static final $instance:Lorg/sufficientlysecure/keychain/UserPacketsModel$UidStatusCreator;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    new-instance v0, Lorg/sufficientlysecure/keychain/model/UserPacket$$Lambda$3;

    invoke-direct {v0}, Lorg/sufficientlysecure/keychain/model/UserPacket$$Lambda$3;-><init>()V

    sput-object v0, Lorg/sufficientlysecure/keychain/model/UserPacket$$Lambda$3;->$instance:Lorg/sufficientlysecure/keychain/UserPacketsModel$UidStatusCreator;

    return-void

    const-string v1, "M_InsDal"

    const-string v2, "Lorg/sufficientlysecure/keychain/model/UserPacket$$Lambda$3;---><clinit>()V"

    invoke-static/range {v1 .. v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
.end method

.method private constructor <init>()V
    .locals 3

    move-object/16 v0, p0

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    return-void

    const-string v1, "M_InsDal"

    const-string v2, "Lorg/sufficientlysecure/keychain/model/UserPacket$$Lambda$3;---><init>()V"

    invoke-static/range {v1 .. v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
.end method


# virtual methods
.method public create(Ljava/lang/String;Ljava/lang/Long;Ljava/lang/String;JJ)Lorg/sufficientlysecure/keychain/UserPacketsModel$UidStatusModel;
    .locals 12

    move-object/16 v9, p0

    move-object/16 v10, p1

    move-object/16 v11, p2

    move-object/16 p0, p3

    move-wide/16 p1, p4

    move-wide/16 p3, p6

    new-instance v8, Lorg/sufficientlysecure/keychain/model/AutoValue_UserPacket_UidStatus;

    move-object v0, v8

    move-object v1, v10

    move-object v2, v11

    move-object v3, p0

    move-wide v4, p1

    move-wide v6, p3

    invoke-direct/range {v0 .. v7}, Lorg/sufficientlysecure/keychain/model/AutoValue_UserPacket_UidStatus;-><init>(Ljava/lang/String;Ljava/lang/Long;Ljava/lang/String;JJ)V

    check-cast v8, Lorg/sufficientlysecure/keychain/UserPacketsModel$UidStatusModel;

    return-object v8

    const-string p5, "M_InsDal"

    const-string p6, "Lorg/sufficientlysecure/keychain/model/UserPacket$$Lambda$3;--->create(Ljava/lang/String;Ljava/lang/Long;Ljava/lang/String;JJ)Lorg/sufficientlysecure/keychain/UserPacketsModel$UidStatusModel;"

    invoke-static/range {p5 .. p6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
.end method
