.class final Lorg/inaturalist/android/ActivityHelper$10;
.super Ljava/lang/Object;
.source "ActivityHelper.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/inaturalist/android/ActivityHelper;->resizeList(Landroid/widget/ListView;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic val$list:Landroid/widget/ListView;


# direct methods
.method constructor <init>(Landroid/widget/ListView;)V
    .locals 0

    .line 525
    iput-object p1, p0, Lorg/inaturalist/android/ActivityHelper$10;->val$list:Landroid/widget/ListView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .line 528
    iget-object v0, p0, Lorg/inaturalist/android/ActivityHelper$10;->val$list:Landroid/widget/ListView;

    invoke-static {v0}, Lorg/inaturalist/android/ActivityHelper;->resizeList(Landroid/widget/ListView;)V

    return-void
.end method
