.class Lorg/inaturalist/android/SignInTask$5;
.super Ljava/lang/Object;
.source "SignInTask.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/inaturalist/android/SignInTask;->askForGoogleEmail()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/inaturalist/android/SignInTask;


# direct methods
.method constructor <init>(Lorg/inaturalist/android/SignInTask;)V
    .locals 0

    .line 401
    iput-object p1, p0, Lorg/inaturalist/android/SignInTask$5;->this$0:Lorg/inaturalist/android/SignInTask;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 0

    .line 404
    invoke-interface {p1}, Landroid/content/DialogInterface;->cancel()V

    return-void
.end method
