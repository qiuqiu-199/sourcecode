.class public final Landroidx/work/Configuration$Builder;
.super Ljava/lang/Object;
.source "Configuration.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/work/Configuration;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation


# instance fields
.field mExecutor:Ljava/util/concurrent/Executor;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 52
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public build()Landroidx/work/Configuration;
    .locals 2

    .line 86
    new-instance v0, Landroidx/work/Configuration;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Landroidx/work/Configuration;-><init>(Landroidx/work/Configuration$Builder;Landroidx/work/Configuration$1;)V

    return-object v0
.end method
