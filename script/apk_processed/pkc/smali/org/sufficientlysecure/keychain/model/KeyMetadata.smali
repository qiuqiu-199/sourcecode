.class public abstract Lorg/sufficientlysecure/keychain/model/KeyMetadata;
.super Ljava/lang/Object;
.source "KeyMetadata.java"

# interfaces
.implements Lorg/sufficientlysecure/keychain/KeyMetadataModel;


# annotations
.annotation build Lcom/google/auto/value/AutoValue;
.end annotation


# static fields
.field public static final FACTORY:Lorg/sufficientlysecure/keychain/KeyMetadataModel$Factory;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lorg/sufficientlysecure/keychain/KeyMetadataModel$Factory<",
            "Lorg/sufficientlysecure/keychain/model/KeyMetadata;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 6

    .line 10
    new-instance v0, Lorg/sufficientlysecure/keychain/KeyMetadataModel$Factory;

    sget-object v1, Lorg/sufficientlysecure/keychain/model/KeyMetadata$$Lambda$0;->$instance:Lorg/sufficientlysecure/keychain/KeyMetadataModel$Creator;

    sget-object v2, Lorg/sufficientlysecure/keychain/model/CustomColumnAdapters;->DATE_ADAPTER:Lcom/squareup/sqldelight/ColumnAdapter;

    invoke-direct {v0, v1, v2}, Lorg/sufficientlysecure/keychain/KeyMetadataModel$Factory;-><init>(Lorg/sufficientlysecure/keychain/KeyMetadataModel$Creator;Lcom/squareup/sqldelight/ColumnAdapter;)V

    sput-object v0, Lorg/sufficientlysecure/keychain/model/KeyMetadata;->FACTORY:Lorg/sufficientlysecure/keychain/KeyMetadataModel$Factory;

    return-void

    const-string v3, "M_InsDal"

    const-string v4, "Lorg/sufficientlysecure/keychain/model/KeyMetadata;---><clinit>()V"

    invoke-static/range {v3 .. v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
.end method

.method public constructor <init>()V
    .locals 3

    move-object/16 v0, p0

    .line 9
    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    return-void

    const-string v1, "M_InsDal"

    const-string v2, "Lorg/sufficientlysecure/keychain/model/KeyMetadata;---><init>()V"

    invoke-static/range {v1 .. v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
.end method


# virtual methods
.method public hasBeenUpdated()Z
    .locals 4

    move-object/16 v1, p0

    .line 14
    invoke-virtual {v1}, Lorg/sufficientlysecure/keychain/model/KeyMetadata;->last_updated()Ljava/util/Date;

    move-result-object v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0

    const-string v2, "M_InsDal"

    const-string v3, "Lorg/sufficientlysecure/keychain/model/KeyMetadata;--->hasBeenUpdated()Z"

    invoke-static/range {v2 .. v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
.end method

.method public isPublished()Z
    .locals 5

    move-object/16 v2, p0

    .line 18
    invoke-virtual {v2}, Lorg/sufficientlysecure/keychain/model/KeyMetadata;->last_updated()Ljava/util/Date;

    move-result-object v0

    if-nez v0, :cond_0

    .line 19
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Cannot get publication state if key has never been updated!"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 21
    :cond_0
    invoke-virtual {v2}, Lorg/sufficientlysecure/keychain/model/KeyMetadata;->seen_on_keyservers()Ljava/lang/Boolean;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 22
    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_1

    const/4 v0, 0x1

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    :goto_0
    return v0

    const-string v3, "M_InsDal"

    const-string v4, "Lorg/sufficientlysecure/keychain/model/KeyMetadata;--->isPublished()Z"

    invoke-static/range {v3 .. v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
.end method
