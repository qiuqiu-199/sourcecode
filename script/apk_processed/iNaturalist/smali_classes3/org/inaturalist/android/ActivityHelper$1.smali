.class Lorg/inaturalist/android/ActivityHelper$1;
.super Ljava/lang/Object;
.source "ActivityHelper.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/inaturalist/android/ActivityHelper;->alert(Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/inaturalist/android/ActivityHelper;


# direct methods
.method constructor <init>(Lorg/inaturalist/android/ActivityHelper;)V
    .locals 0

    .line 63
    iput-object p1, p0, Lorg/inaturalist/android/ActivityHelper$1;->this$0:Lorg/inaturalist/android/ActivityHelper;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 0

    .line 65
    invoke-interface {p1}, Landroid/content/DialogInterface;->cancel()V

    return-void
.end method
