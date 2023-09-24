.class Lorg/inaturalist/android/INaturalistApp$5;
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

.field final synthetic val$inatNetworks:[Ljava/lang/String;


# direct methods
.method constructor <init>(Lorg/inaturalist/android/INaturalistApp;[Ljava/lang/String;)V
    .locals 0

    .line 552
    iput-object p1, p0, Lorg/inaturalist/android/INaturalistApp$5;->this$0:Lorg/inaturalist/android/INaturalistApp;

    iput-object p2, p0, Lorg/inaturalist/android/INaturalistApp$5;->val$inatNetworks:[Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 1

    .line 556
    iget-object p1, p0, Lorg/inaturalist/android/INaturalistApp$5;->this$0:Lorg/inaturalist/android/INaturalistApp;

    iget-object p2, p0, Lorg/inaturalist/android/INaturalistApp$5;->val$inatNetworks:[Ljava/lang/String;

    const/4 v0, 0x0

    aget-object p2, p2, v0

    invoke-virtual {p1, p2}, Lorg/inaturalist/android/INaturalistApp;->setInaturalistNetworkMember(Ljava/lang/String;)V

    return-void
.end method
