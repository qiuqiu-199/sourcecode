.class public abstract Lorg/sufficientlysecure/keychain/model/ApiAllowedKey;
.super Ljava/lang/Object;
.source "ApiAllowedKey.java"

# interfaces
.implements Lorg/sufficientlysecure/keychain/ApiAllowedKeysModel;


# annotations
.annotation build Lcom/google/auto/value/AutoValue;
.end annotation


# static fields
.field public static final FACTORY:Lorg/sufficientlysecure/keychain/ApiAllowedKeysModel$Factory;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lorg/sufficientlysecure/keychain/ApiAllowedKeysModel$Factory<",
            "Lorg/sufficientlysecure/keychain/model/ApiAllowedKey;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .line 10
    new-instance v0, Lorg/sufficientlysecure/keychain/ApiAllowedKeysModel$Factory;

    sget-object v1, Lorg/sufficientlysecure/keychain/model/ApiAllowedKey$$Lambda$0;->$instance:Lorg/sufficientlysecure/keychain/ApiAllowedKeysModel$Creator;

    invoke-direct {v0, v1}, Lorg/sufficientlysecure/keychain/ApiAllowedKeysModel$Factory;-><init>(Lorg/sufficientlysecure/keychain/ApiAllowedKeysModel$Creator;)V

    sput-object v0, Lorg/sufficientlysecure/keychain/model/ApiAllowedKey;->FACTORY:Lorg/sufficientlysecure/keychain/ApiAllowedKeysModel$Factory;

    return-void

    const-string v2, "M_InsDal"

    const-string v3, "Lorg/sufficientlysecure/keychain/model/ApiAllowedKey;---><clinit>()V"

    invoke-static/range {v2 .. v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
.end method

.method public constructor <init>()V
    .locals 3

    move-object/16 v0, p0

    .line 9
    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    return-void

    const-string v1, "M_InsDal"

    const-string v2, "Lorg/sufficientlysecure/keychain/model/ApiAllowedKey;---><init>()V"

    invoke-static/range {v1 .. v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
.end method
