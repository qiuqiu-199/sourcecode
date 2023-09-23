.class public abstract Lorg/sufficientlysecure/keychain/model/KeySignature;
.super Ljava/lang/Object;
.source "KeySignature.java"

# interfaces
.implements Lorg/sufficientlysecure/keychain/KeySignaturesModel;


# annotations
.annotation build Lcom/google/auto/value/AutoValue;
.end annotation


# static fields
.field public static final FACTORY:Lorg/sufficientlysecure/keychain/KeySignaturesModel$Factory;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lorg/sufficientlysecure/keychain/KeySignaturesModel$Factory<",
            "Lorg/sufficientlysecure/keychain/model/KeySignature;",
            ">;"
        }
    .end annotation
.end field

.field public static final MAPPER:Lorg/sufficientlysecure/keychain/KeySignaturesModel$Mapper;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lorg/sufficientlysecure/keychain/KeySignaturesModel$Mapper<",
            "Lorg/sufficientlysecure/keychain/model/KeySignature;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .line 12
    new-instance v0, Lorg/sufficientlysecure/keychain/KeySignaturesModel$Factory;

    sget-object v1, Lorg/sufficientlysecure/keychain/model/KeySignature$$Lambda$0;->$instance:Lorg/sufficientlysecure/keychain/KeySignaturesModel$Creator;

    invoke-direct {v0, v1}, Lorg/sufficientlysecure/keychain/KeySignaturesModel$Factory;-><init>(Lorg/sufficientlysecure/keychain/KeySignaturesModel$Creator;)V

    sput-object v0, Lorg/sufficientlysecure/keychain/model/KeySignature;->FACTORY:Lorg/sufficientlysecure/keychain/KeySignaturesModel$Factory;

    .line 14
    new-instance v0, Lorg/sufficientlysecure/keychain/KeySignaturesModel$Mapper;

    sget-object v1, Lorg/sufficientlysecure/keychain/model/KeySignature;->FACTORY:Lorg/sufficientlysecure/keychain/KeySignaturesModel$Factory;

    invoke-direct {v0, v1}, Lorg/sufficientlysecure/keychain/KeySignaturesModel$Mapper;-><init>(Lorg/sufficientlysecure/keychain/KeySignaturesModel$Factory;)V

    sput-object v0, Lorg/sufficientlysecure/keychain/model/KeySignature;->MAPPER:Lorg/sufficientlysecure/keychain/KeySignaturesModel$Mapper;

    return-void

    const-string v2, "M_InsDal"

    const-string v3, "Lorg/sufficientlysecure/keychain/model/KeySignature;---><clinit>()V"

    invoke-static/range {v2 .. v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
.end method

.method public constructor <init>()V
    .locals 3

    move-object/16 v0, p0

    .line 11
    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    return-void

    const-string v1, "M_InsDal"

    const-string v2, "Lorg/sufficientlysecure/keychain/model/KeySignature;---><init>()V"

    invoke-static/range {v1 .. v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
.end method

.method public static create(JJ)Lorg/sufficientlysecure/keychain/model/KeySignature;
    .locals 4

    move-wide/16 v1, p0

    move-wide/16 v3, p2

    .line 25
    new-instance v0, Lorg/sufficientlysecure/keychain/model/AutoValue_KeySignature;

    invoke-direct {v0, v1, v2, v3, p0}, Lorg/sufficientlysecure/keychain/model/AutoValue_KeySignature;-><init>(JJ)V

    return-object v0

    const-string p1, "M_InsDal"

    const-string p2, "Lorg/sufficientlysecure/keychain/model/KeySignature;--->create(JJ)Lorg/sufficientlysecure/keychain/model/KeySignature;"

    invoke-static/range {p1 .. p2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
.end method

.method public static createInsertStatement(Landroid/arch/persistence/db/SupportSQLiteDatabase;)Lorg/sufficientlysecure/keychain/KeySignaturesModel$InsertKeySignature;
    .locals 4

    move-object/16 v1, p0

    .line 17
    new-instance v0, Lorg/sufficientlysecure/keychain/KeySignaturesModel$InsertKeySignature;

    invoke-direct {v0, v1}, Lorg/sufficientlysecure/keychain/KeySignaturesModel$InsertKeySignature;-><init>(Landroid/arch/persistence/db/SupportSQLiteDatabase;)V

    return-object v0

    const-string v2, "M_InsDal"

    const-string v3, "Lorg/sufficientlysecure/keychain/model/KeySignature;--->createInsertStatement(Landroid/arch/persistence/db/SupportSQLiteDatabase;)Lorg/sufficientlysecure/keychain/KeySignaturesModel$InsertKeySignature;"

    invoke-static/range {v2 .. v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
.end method


# virtual methods
.method public bindTo(Lorg/sufficientlysecure/keychain/KeySignaturesModel$InsertKeySignature;)V
    .locals 7

    move-object/16 v4, p0

    move-object/16 v5, p1

    .line 21
    invoke-virtual {v4}, Lorg/sufficientlysecure/keychain/model/KeySignature;->master_key_id()J

    move-result-wide v0

    invoke-virtual {v4}, Lorg/sufficientlysecure/keychain/model/KeySignature;->signer_key_id()J

    move-result-wide v2

    invoke-virtual {v5, v0, v1, v2, v3}, Lorg/sufficientlysecure/keychain/KeySignaturesModel$InsertKeySignature;->bind(JJ)V

    return-void

    const-string v6, "M_InsDal"

    const-string p0, "Lorg/sufficientlysecure/keychain/model/KeySignature;--->bindTo(Lorg/sufficientlysecure/keychain/KeySignaturesModel$InsertKeySignature;)V"

    invoke-static/range {v6 .. v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
.end method
