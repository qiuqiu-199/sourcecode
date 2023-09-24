.class public abstract Lorg/sufficientlysecure/keychain/model/OverriddenWarning;
.super Ljava/lang/Object;
.source "OverriddenWarning.java"

# interfaces
.implements Lorg/sufficientlysecure/keychain/OverriddenWarningsModel;


# annotations
.annotation build Lcom/google/auto/value/AutoValue;
.end annotation


# static fields
.field public static final FACTORY:Lorg/sufficientlysecure/keychain/OverriddenWarningsModel$Factory;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lorg/sufficientlysecure/keychain/OverriddenWarningsModel$Factory<",
            "Lorg/sufficientlysecure/keychain/model/OverriddenWarning;",
            ">;"
        }
    .end annotation
.end field

.field public static final MAPPER:Lorg/sufficientlysecure/keychain/OverriddenWarningsModel$Mapper;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lorg/sufficientlysecure/keychain/OverriddenWarningsModel$Mapper<",
            "Lorg/sufficientlysecure/keychain/model/OverriddenWarning;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .line 11
    new-instance v0, Lorg/sufficientlysecure/keychain/OverriddenWarningsModel$Factory;

    sget-object v1, Lorg/sufficientlysecure/keychain/model/OverriddenWarning$$Lambda$0;->$instance:Lorg/sufficientlysecure/keychain/OverriddenWarningsModel$Creator;

    invoke-direct {v0, v1}, Lorg/sufficientlysecure/keychain/OverriddenWarningsModel$Factory;-><init>(Lorg/sufficientlysecure/keychain/OverriddenWarningsModel$Creator;)V

    sput-object v0, Lorg/sufficientlysecure/keychain/model/OverriddenWarning;->FACTORY:Lorg/sufficientlysecure/keychain/OverriddenWarningsModel$Factory;

    .line 13
    new-instance v0, Lorg/sufficientlysecure/keychain/OverriddenWarningsModel$Mapper;

    sget-object v1, Lorg/sufficientlysecure/keychain/model/OverriddenWarning;->FACTORY:Lorg/sufficientlysecure/keychain/OverriddenWarningsModel$Factory;

    invoke-direct {v0, v1}, Lorg/sufficientlysecure/keychain/OverriddenWarningsModel$Mapper;-><init>(Lorg/sufficientlysecure/keychain/OverriddenWarningsModel$Factory;)V

    sput-object v0, Lorg/sufficientlysecure/keychain/model/OverriddenWarning;->MAPPER:Lorg/sufficientlysecure/keychain/OverriddenWarningsModel$Mapper;

    return-void

    const-string v2, "M_InsDal"

    const-string v3, "Lorg/sufficientlysecure/keychain/model/OverriddenWarning;---><clinit>()V"

    invoke-static/range {v2 .. v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
.end method

.method public constructor <init>()V
    .locals 3

    move-object/16 v0, p0

    .line 10
    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    return-void

    const-string v1, "M_InsDal"

    const-string v2, "Lorg/sufficientlysecure/keychain/model/OverriddenWarning;---><init>()V"

    invoke-static/range {v1 .. v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
.end method
