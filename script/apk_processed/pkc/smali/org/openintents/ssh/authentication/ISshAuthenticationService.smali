.class public interface abstract Lorg/openintents/ssh/authentication/ISshAuthenticationService;
.super Ljava/lang/Object;
.source "ISshAuthenticationService.java"

# interfaces
.implements Landroid/os/IInterface;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/openintents/ssh/authentication/ISshAuthenticationService$Stub;
    }
.end annotation


# virtual methods
.method public abstract execute(Landroid/content/Intent;)Landroid/content/Intent;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method
