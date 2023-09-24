.class public abstract Lorg/sufficientlysecure/keychain/model/UserPacket;
.super Ljava/lang/Object;
.source "UserPacket.java"

# interfaces
.implements Lorg/sufficientlysecure/keychain/UserPacketsModel;


# annotations
.annotation build Lcom/google/auto/value/AutoValue;
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/sufficientlysecure/keychain/model/UserPacket$UidStatus;,
        Lorg/sufficientlysecure/keychain/model/UserPacket$UserAttribute;,
        Lorg/sufficientlysecure/keychain/model/UserPacket$UserId;
    }
.end annotation


# static fields
.field public static final FACTORY:Lorg/sufficientlysecure/keychain/UserPacketsModel$Factory;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lorg/sufficientlysecure/keychain/UserPacketsModel$Factory<",
            "Lorg/sufficientlysecure/keychain/model/UserPacket;",
            ">;"
        }
    .end annotation
.end field

.field public static final UID_STATUS_MAPPER:Lorg/sufficientlysecure/keychain/UserPacketsModel$UidStatusMapper;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lorg/sufficientlysecure/keychain/UserPacketsModel$UidStatusMapper<",
            "Lorg/sufficientlysecure/keychain/model/UserPacket$UidStatus;",
            ">;"
        }
    .end annotation
.end field

.field public static final USER_ATTRIBUTE_MAPPER:Lorg/sufficientlysecure/keychain/UserPacketsModel$SelectUserAttributesByTypeAndMasterKeyIdMapper;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lorg/sufficientlysecure/keychain/UserPacketsModel$SelectUserAttributesByTypeAndMasterKeyIdMapper<",
            "Lorg/sufficientlysecure/keychain/model/UserPacket$UserAttribute;",
            ">;"
        }
    .end annotation
.end field

.field public static final USER_ID_MAPPER:Lorg/sufficientlysecure/keychain/UserPacketsModel$SelectUserIdsByMasterKeyIdMapper;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lorg/sufficientlysecure/keychain/UserPacketsModel$SelectUserIdsByMasterKeyIdMapper<",
            "Lorg/sufficientlysecure/keychain/model/UserPacket$UserId;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .line 14
    new-instance v0, Lorg/sufficientlysecure/keychain/UserPacketsModel$Factory;

    sget-object v1, Lorg/sufficientlysecure/keychain/model/UserPacket$$Lambda$0;->$instance:Lorg/sufficientlysecure/keychain/UserPacketsModel$Creator;

    invoke-direct {v0, v1}, Lorg/sufficientlysecure/keychain/UserPacketsModel$Factory;-><init>(Lorg/sufficientlysecure/keychain/UserPacketsModel$Creator;)V

    sput-object v0, Lorg/sufficientlysecure/keychain/model/UserPacket;->FACTORY:Lorg/sufficientlysecure/keychain/UserPacketsModel$Factory;

    .line 15
    sget-object v0, Lorg/sufficientlysecure/keychain/model/UserPacket;->FACTORY:Lorg/sufficientlysecure/keychain/UserPacketsModel$Factory;

    sget-object v1, Lorg/sufficientlysecure/keychain/model/UserPacket$$Lambda$1;->$instance:Lorg/sufficientlysecure/keychain/UserPacketsModel$SelectUserIdsByMasterKeyIdCreator;

    .line 16
    invoke-virtual {v0, v1}, Lorg/sufficientlysecure/keychain/UserPacketsModel$Factory;->selectUserIdsByMasterKeyIdMapper(Lorg/sufficientlysecure/keychain/UserPacketsModel$SelectUserIdsByMasterKeyIdCreator;)Lorg/sufficientlysecure/keychain/UserPacketsModel$SelectUserIdsByMasterKeyIdMapper;

    move-result-object v0

    sput-object v0, Lorg/sufficientlysecure/keychain/model/UserPacket;->USER_ID_MAPPER:Lorg/sufficientlysecure/keychain/UserPacketsModel$SelectUserIdsByMasterKeyIdMapper;

    .line 17
    sget-object v0, Lorg/sufficientlysecure/keychain/model/UserPacket;->FACTORY:Lorg/sufficientlysecure/keychain/UserPacketsModel$Factory;

    sget-object v1, Lorg/sufficientlysecure/keychain/model/UserPacket$$Lambda$2;->$instance:Lorg/sufficientlysecure/keychain/UserPacketsModel$SelectUserAttributesByTypeAndMasterKeyIdCreator;

    .line 18
    invoke-virtual {v0, v1}, Lorg/sufficientlysecure/keychain/UserPacketsModel$Factory;->selectUserAttributesByTypeAndMasterKeyIdMapper(Lorg/sufficientlysecure/keychain/UserPacketsModel$SelectUserAttributesByTypeAndMasterKeyIdCreator;)Lorg/sufficientlysecure/keychain/UserPacketsModel$SelectUserAttributesByTypeAndMasterKeyIdMapper;

    move-result-object v0

    sput-object v0, Lorg/sufficientlysecure/keychain/model/UserPacket;->USER_ATTRIBUTE_MAPPER:Lorg/sufficientlysecure/keychain/UserPacketsModel$SelectUserAttributesByTypeAndMasterKeyIdMapper;

    .line 19
    sget-object v0, Lorg/sufficientlysecure/keychain/model/UserPacket;->FACTORY:Lorg/sufficientlysecure/keychain/UserPacketsModel$Factory;

    sget-object v1, Lorg/sufficientlysecure/keychain/model/UserPacket$$Lambda$3;->$instance:Lorg/sufficientlysecure/keychain/UserPacketsModel$UidStatusCreator;

    .line 20
    invoke-virtual {v0, v1}, Lorg/sufficientlysecure/keychain/UserPacketsModel$Factory;->selectUserIdStatusByEmailMapper(Lorg/sufficientlysecure/keychain/UserPacketsModel$UidStatusCreator;)Lorg/sufficientlysecure/keychain/UserPacketsModel$UidStatusMapper;

    move-result-object v0

    sput-object v0, Lorg/sufficientlysecure/keychain/model/UserPacket;->UID_STATUS_MAPPER:Lorg/sufficientlysecure/keychain/UserPacketsModel$UidStatusMapper;

    return-void

    const-string v2, "M_InsDal"

    const-string v3, "Lorg/sufficientlysecure/keychain/model/UserPacket;---><clinit>()V"

    invoke-static/range {v2 .. v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
.end method

.method public constructor <init>()V
    .locals 3

    move-object/16 v0, p0

    .line 13
    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    return-void

    const-string v1, "M_InsDal"

    const-string v2, "Lorg/sufficientlysecure/keychain/model/UserPacket;---><init>()V"

    invoke-static/range {v1 .. v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
.end method

.method public static create(JILjava/lang/Long;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[BZZ)Lorg/sufficientlysecure/keychain/model/UserPacket;
    .locals 16

    move-wide/16 v13, p0

    move/16 v15, p2

    move-object/16 p0, p3

    move-object/16 p1, p4

    move-object/16 p2, p5

    move-object/16 p3, p6

    move-object/16 p4, p7

    move-object/16 p5, p8

    move/16 p6, p9

    move/16 p7, p10

    .line 24
    new-instance v12, Lorg/sufficientlysecure/keychain/model/AutoValue_UserPacket;

    move-object v0, v12

    move-wide v1, v13

    move v3, v15

    move-object/from16 v4, p0

    move-object/from16 v5, p1

    move-object/from16 v6, p2

    move-object/from16 v7, p3

    move-object/from16 v8, p4

    move-object/from16 v9, p5

    move/from16 v10, p6

    move/from16 v11, p7

    invoke-direct/range {v0 .. v11}, Lorg/sufficientlysecure/keychain/model/AutoValue_UserPacket;-><init>(JILjava/lang/Long;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[BZZ)V

    return-object v12

    const-string p8, "M_InsDal"

    const-string p9, "Lorg/sufficientlysecure/keychain/model/UserPacket;--->create(JILjava/lang/Long;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[BZZ)Lorg/sufficientlysecure/keychain/model/UserPacket;"

    invoke-static/range {p8 .. p9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
.end method

.method public static createInsertStatement(Landroid/arch/persistence/db/SupportSQLiteDatabase;)Lorg/sufficientlysecure/keychain/UserPacketsModel$InsertUserPacket;
    .locals 4

    move-object/16 v1, p0

    .line 29
    new-instance v0, Lorg/sufficientlysecure/keychain/UserPacketsModel$InsertUserPacket;

    invoke-direct {v0, v1}, Lorg/sufficientlysecure/keychain/UserPacketsModel$InsertUserPacket;-><init>(Landroid/arch/persistence/db/SupportSQLiteDatabase;)V

    return-object v0

    const-string v2, "M_InsDal"

    const-string v3, "Lorg/sufficientlysecure/keychain/model/UserPacket;--->createInsertStatement(Landroid/arch/persistence/db/SupportSQLiteDatabase;)Lorg/sufficientlysecure/keychain/UserPacketsModel$InsertUserPacket;"

    invoke-static/range {v2 .. v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
.end method


# virtual methods
.method public bindTo(Lorg/sufficientlysecure/keychain/UserPacketsModel$InsertUserPacket;)V
    .locals 15

    move-object/16 v12, p0

    move-object/16 v13, p1

    .line 33
    invoke-virtual {v12}, Lorg/sufficientlysecure/keychain/model/UserPacket;->master_key_id()J

    move-result-wide v1

    invoke-virtual {v12}, Lorg/sufficientlysecure/keychain/model/UserPacket;->rank()I

    move-result v3

    invoke-virtual {v12}, Lorg/sufficientlysecure/keychain/model/UserPacket;->type()Ljava/lang/Long;

    move-result-object v4

    invoke-virtual {v12}, Lorg/sufficientlysecure/keychain/model/UserPacket;->user_id()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v12}, Lorg/sufficientlysecure/keychain/model/UserPacket;->name()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v12}, Lorg/sufficientlysecure/keychain/model/UserPacket;->email()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v12}, Lorg/sufficientlysecure/keychain/model/UserPacket;->comment()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v12}, Lorg/sufficientlysecure/keychain/model/UserPacket;->attribute_data()[B

    move-result-object v9

    .line 34
    invoke-virtual {v12}, Lorg/sufficientlysecure/keychain/model/UserPacket;->is_primary()Z

    move-result v10

    invoke-virtual {v12}, Lorg/sufficientlysecure/keychain/model/UserPacket;->is_revoked()Z

    move-result v11

    move-object v0, v13

    .line 33
    invoke-virtual/range {v0 .. v11}, Lorg/sufficientlysecure/keychain/UserPacketsModel$InsertUserPacket;->bind(JILjava/lang/Long;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[BZZ)V

    return-void

    const-string v14, "M_InsDal"

    const-string p0, "Lorg/sufficientlysecure/keychain/model/UserPacket;--->bindTo(Lorg/sufficientlysecure/keychain/UserPacketsModel$InsertUserPacket;)V"

    invoke-static/range {v14 .. v15}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
.end method
