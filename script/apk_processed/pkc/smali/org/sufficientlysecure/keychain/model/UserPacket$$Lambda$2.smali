.class final synthetic Lorg/sufficientlysecure/keychain/model/UserPacket$$Lambda$2;
.super Ljava/lang/Object;

# interfaces
.implements Lorg/sufficientlysecure/keychain/UserPacketsModel$SelectUserAttributesByTypeAndMasterKeyIdCreator;


# static fields
.field static final $instance:Lorg/sufficientlysecure/keychain/UserPacketsModel$SelectUserAttributesByTypeAndMasterKeyIdCreator;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    new-instance v0, Lorg/sufficientlysecure/keychain/model/UserPacket$$Lambda$2;

    invoke-direct {v0}, Lorg/sufficientlysecure/keychain/model/UserPacket$$Lambda$2;-><init>()V

    sput-object v0, Lorg/sufficientlysecure/keychain/model/UserPacket$$Lambda$2;->$instance:Lorg/sufficientlysecure/keychain/UserPacketsModel$SelectUserAttributesByTypeAndMasterKeyIdCreator;

    return-void

    const-string v1, "M_InsDal"

    const-string v2, "Lorg/sufficientlysecure/keychain/model/UserPacket$$Lambda$2;---><clinit>()V"

    invoke-static/range {v1 .. v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
.end method

.method private constructor <init>()V
    .locals 3

    move-object/16 v0, p0

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    return-void

    const-string v1, "M_InsDal"

    const-string v2, "Lorg/sufficientlysecure/keychain/model/UserPacket$$Lambda$2;---><init>()V"

    invoke-static/range {v1 .. v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
.end method


# virtual methods
.method public create(JI[BZZLjava/lang/Long;)Lorg/sufficientlysecure/keychain/UserPacketsModel$SelectUserAttributesByTypeAndMasterKeyIdModel;
    .locals 12

    move-object/16 v9, p0

    move-wide/16 v10, p1

    move/16 p0, p3

    move-object/16 p1, p4

    move/16 p2, p5

    move/16 p3, p6

    move-object/16 p4, p7

    new-instance v8, Lorg/sufficientlysecure/keychain/model/AutoValue_UserPacket_UserAttribute;

    move-object v0, v8

    move-wide v1, v10

    move v3, p0

    move-object v4, p1

    move v5, p2

    move v6, p3

    move-object/from16 v7, p4

    invoke-direct/range {v0 .. v7}, Lorg/sufficientlysecure/keychain/model/AutoValue_UserPacket_UserAttribute;-><init>(JI[BZZLjava/lang/Long;)V

    check-cast v8, Lorg/sufficientlysecure/keychain/UserPacketsModel$SelectUserAttributesByTypeAndMasterKeyIdModel;

    return-object v8

    const-string p5, "M_InsDal"

    const-string p6, "Lorg/sufficientlysecure/keychain/model/UserPacket$$Lambda$2;--->create(JI[BZZLjava/lang/Long;)Lorg/sufficientlysecure/keychain/UserPacketsModel$SelectUserAttributesByTypeAndMasterKeyIdModel;"

    invoke-static/range {p5 .. p6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
.end method
