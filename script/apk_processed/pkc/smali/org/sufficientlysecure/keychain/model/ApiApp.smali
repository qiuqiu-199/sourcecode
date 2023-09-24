.class public abstract Lorg/sufficientlysecure/keychain/model/ApiApp;
.super Ljava/lang/Object;
.source "ApiApp.java"

# interfaces
.implements Lorg/sufficientlysecure/keychain/ApiAppsModel;


# annotations
.annotation build Lcom/google/auto/value/AutoValue;
.end annotation


# static fields
.field public static final FACTORY:Lorg/sufficientlysecure/keychain/ApiAppsModel$Factory;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lorg/sufficientlysecure/keychain/ApiAppsModel$Factory<",
            "Lorg/sufficientlysecure/keychain/model/ApiApp;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .line 27
    new-instance v0, Lorg/sufficientlysecure/keychain/ApiAppsModel$Factory;

    sget-object v1, Lorg/sufficientlysecure/keychain/model/ApiApp$$Lambda$0;->$instance:Lorg/sufficientlysecure/keychain/ApiAppsModel$Creator;

    invoke-direct {v0, v1}, Lorg/sufficientlysecure/keychain/ApiAppsModel$Factory;-><init>(Lorg/sufficientlysecure/keychain/ApiAppsModel$Creator;)V

    sput-object v0, Lorg/sufficientlysecure/keychain/model/ApiApp;->FACTORY:Lorg/sufficientlysecure/keychain/ApiAppsModel$Factory;

    return-void

    const-string v2, "M_InsDal"

    const-string v3, "Lorg/sufficientlysecure/keychain/model/ApiApp;---><clinit>()V"

    invoke-static/range {v2 .. v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
.end method

.method public constructor <init>()V
    .locals 3

    move-object/16 v0, p0

    .line 26
    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    return-void

    const-string v1, "M_InsDal"

    const-string v2, "Lorg/sufficientlysecure/keychain/model/ApiApp;---><init>()V"

    invoke-static/range {v1 .. v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
.end method

.method public static create(Ljava/lang/String;[B)Lorg/sufficientlysecure/keychain/model/ApiApp;
    .locals 5

    move-object/16 v2, p0

    move-object/16 v3, p1

    .line 31
    new-instance v0, Lorg/sufficientlysecure/keychain/model/AutoValue_ApiApp;

    const/4 v1, 0x0

    invoke-direct {v0, v1, v2, v3}, Lorg/sufficientlysecure/keychain/model/AutoValue_ApiApp;-><init>(Ljava/lang/Long;Ljava/lang/String;[B)V

    return-object v0

    const-string v4, "M_InsDal"

    const-string p0, "Lorg/sufficientlysecure/keychain/model/ApiApp;--->create(Ljava/lang/String;[B)Lorg/sufficientlysecure/keychain/model/ApiApp;"

    invoke-static/range {v4 .. v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
.end method
