.class public abstract Lorg/sufficientlysecure/keychain/model/KeyRingPublic;
.super Ljava/lang/Object;
.source "KeyRingPublic.java"

# interfaces
.implements Lorg/sufficientlysecure/keychain/KeyRingsPublicModel;


# annotations
.annotation build Lcom/google/auto/value/AutoValue;
.end annotation


# static fields
.field public static final FACTORY:Lorg/sufficientlysecure/keychain/KeyRingsPublicModel$Factory;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lorg/sufficientlysecure/keychain/KeyRingsPublicModel$Factory<",
            "Lorg/sufficientlysecure/keychain/model/KeyRingPublic;",
            ">;"
        }
    .end annotation
.end field

.field public static final MAPPER:Lorg/sufficientlysecure/keychain/KeyRingsPublicModel$Mapper;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lorg/sufficientlysecure/keychain/KeyRingsPublicModel$Mapper<",
            "Lorg/sufficientlysecure/keychain/model/KeyRingPublic;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .line 13
    new-instance v0, Lorg/sufficientlysecure/keychain/KeyRingsPublicModel$Factory;

    sget-object v1, Lorg/sufficientlysecure/keychain/model/KeyRingPublic$$Lambda$0;->$instance:Lorg/sufficientlysecure/keychain/KeyRingsPublicModel$Creator;

    invoke-direct {v0, v1}, Lorg/sufficientlysecure/keychain/KeyRingsPublicModel$Factory;-><init>(Lorg/sufficientlysecure/keychain/KeyRingsPublicModel$Creator;)V

    sput-object v0, Lorg/sufficientlysecure/keychain/model/KeyRingPublic;->FACTORY:Lorg/sufficientlysecure/keychain/KeyRingsPublicModel$Factory;

    .line 15
    new-instance v0, Lorg/sufficientlysecure/keychain/KeyRingsPublicModel$Mapper;

    sget-object v1, Lorg/sufficientlysecure/keychain/model/KeyRingPublic;->FACTORY:Lorg/sufficientlysecure/keychain/KeyRingsPublicModel$Factory;

    invoke-direct {v0, v1}, Lorg/sufficientlysecure/keychain/KeyRingsPublicModel$Mapper;-><init>(Lorg/sufficientlysecure/keychain/KeyRingsPublicModel$Factory;)V

    sput-object v0, Lorg/sufficientlysecure/keychain/model/KeyRingPublic;->MAPPER:Lorg/sufficientlysecure/keychain/KeyRingsPublicModel$Mapper;

    return-void

    const-string v2, "M_InsDal"

    const-string v3, "Lorg/sufficientlysecure/keychain/model/KeyRingPublic;---><clinit>()V"

    invoke-static/range {v2 .. v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
.end method

.method public constructor <init>()V
    .locals 3

    move-object/16 v0, p0

    .line 12
    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    return-void

    const-string v1, "M_InsDal"

    const-string v2, "Lorg/sufficientlysecure/keychain/model/KeyRingPublic;---><init>()V"

    invoke-static/range {v1 .. v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
.end method

.method public static create(J[B)Lorg/sufficientlysecure/keychain/model/KeyRingPublic;
    .locals 4

    move-wide/16 v1, p0

    move-object/16 v3, p2

    .line 18
    new-instance v0, Lorg/sufficientlysecure/keychain/model/AutoValue_KeyRingPublic;

    invoke-direct {v0, v1, v2, v3}, Lorg/sufficientlysecure/keychain/model/AutoValue_KeyRingPublic;-><init>(J[B)V

    return-object v0

    const-string p0, "M_InsDal"

    const-string p1, "Lorg/sufficientlysecure/keychain/model/KeyRingPublic;--->create(J[B)Lorg/sufficientlysecure/keychain/model/KeyRingPublic;"

    invoke-static/range {p0 .. p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
.end method

.method public static createInsertStatement(Landroid/arch/persistence/db/SupportSQLiteDatabase;)Lorg/sufficientlysecure/keychain/KeyRingsPublicModel$InsertKeyRingPublic;
    .locals 4

    move-object/16 v1, p0

    .line 22
    new-instance v0, Lorg/sufficientlysecure/keychain/KeyRingsPublicModel$InsertKeyRingPublic;

    invoke-direct {v0, v1}, Lorg/sufficientlysecure/keychain/KeyRingsPublicModel$InsertKeyRingPublic;-><init>(Landroid/arch/persistence/db/SupportSQLiteDatabase;)V

    return-object v0

    const-string v2, "M_InsDal"

    const-string v3, "Lorg/sufficientlysecure/keychain/model/KeyRingPublic;--->createInsertStatement(Landroid/arch/persistence/db/SupportSQLiteDatabase;)Lorg/sufficientlysecure/keychain/KeyRingsPublicModel$InsertKeyRingPublic;"

    invoke-static/range {v2 .. v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
.end method


# virtual methods
.method public bindTo(Lorg/sufficientlysecure/keychain/KeyRingsPublicModel$InsertKeyRingPublic;)V
    .locals 6

    move-object/16 v3, p0

    move-object/16 v4, p1

    .line 26
    invoke-virtual {v3}, Lorg/sufficientlysecure/keychain/model/KeyRingPublic;->master_key_id()J

    move-result-wide v0

    invoke-virtual {v3}, Lorg/sufficientlysecure/keychain/model/KeyRingPublic;->key_ring_data()[B

    move-result-object v2

    invoke-virtual {v4, v0, v1, v2}, Lorg/sufficientlysecure/keychain/KeyRingsPublicModel$InsertKeyRingPublic;->bind(J[B)V

    return-void

    const-string v5, "M_InsDal"

    const-string p0, "Lorg/sufficientlysecure/keychain/model/KeyRingPublic;--->bindTo(Lorg/sufficientlysecure/keychain/KeyRingsPublicModel$InsertKeyRingPublic;)V"

    invoke-static/range {v5 .. v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
.end method
