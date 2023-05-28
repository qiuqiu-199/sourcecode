.class Lorg/inaturalist/android/INaturalistApp$4;
.super Ljava/lang/Object;
.source "INaturalistApp.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/inaturalist/android/INaturalistApp;->detectUserCountryAndUpdateNetwork(Landroid/content/Context;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/inaturalist/android/INaturalistApp;

.field final synthetic val$selectedNetwork:Ljava/lang/String;


# direct methods
.method constructor <init>(Lorg/inaturalist/android/INaturalistApp;Ljava/lang/String;)V
    .locals 0

    .line 545
    iput-object p1, p0, Lorg/inaturalist/android/INaturalistApp$4;->this$0:Lorg/inaturalist/android/INaturalistApp;

    iput-object p2, p0, Lorg/inaturalist/android/INaturalistApp$4;->val$selectedNetwork:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 0

    .line 548
    iget-object p1, p0, Lorg/inaturalist/android/INaturalistApp$4;->this$0:Lorg/inaturalist/android/INaturalistApp;

    iget-object p2, p0, Lorg/inaturalist/android/INaturalistApp$4;->val$selectedNetwork:Ljava/lang/String;

    invoke-virtual {p1, p2}, Lorg/inaturalist/android/INaturalistApp;->setInaturalistNetworkMember(Ljava/lang/String;)V

    .line 549
    iget-object p1, p0, Lorg/inaturalist/android/INaturalistApp$4;->this$0:Lorg/inaturalist/android/INaturalistApp;

    invoke-virtual {p1}, Lorg/inaturalist/android/INaturalistApp;->restart()V

    return-void
.end method
